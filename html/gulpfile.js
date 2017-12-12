//load dependecies
var gulp             = require('gulp'),
	compass          = require('gulp-compass'),
	autoprefixer     = require('gulp-autoprefixer'),
	//cleanCSS         = require('gulp-clean-css'),
	notify           = require('gulp-notify'),
	plumber          = require('gulp-plumber'),
	path             = require('path'),
	gutil            = require('gulp-util'),
	svgSprite        = require('gulp-svg-sprite'),
	size             = require('gulp-size'),
	iconfont         = require('gulp-iconfont'),
	iconfontCss      = require('gulp-iconfont-css'),
	imagemin         = require('gulp-imagemin'),
	browserSync		 = require('browser-sync').create();


//SVG sprite configuration
var projectPath = '/',
	destinationPath = 'assets/',
	svgTemplate = "sprite-template.scss",
	spriteName = "_sprite.scss",
	spritePath = {
		newSprite: {
			SRC: 'assets/svg/*', //*** svgs used to create sprite
			SVG: 'img/sprite.svg', //*** sprite generated from svgs, it will be placed in - "html\assets\img" called sprite.svg
			FINAL: '../scss/layout/' //*** scss folder for genetared sprite.scss
		},
		svgTemplate: {
			SRC: 'conf/'
		}
	};

var changeEvent = function(evt) {
	gutil.log('File', gutil.colors.cyan(evt.path.replace(new RegExp('/.*(?=/' + projectPath + ')/'), '')), 'was', gutil.colors.magenta(evt.type));
};

gulp.task('svgSprite', function () {
	return gulp.src(spritePath.newSprite.SRC)
		.pipe(svgSprite({
			shape: {
				spacing: {
					padding: 10
				}
			},
			mode: {
				css: {
					dest: "./",
					layout: "vertical",
					sprite: spritePath.newSprite.SVG,
					bust: false,
					render: {
						scss: {
							dest: spritePath.newSprite.FINAL + spriteName,
							template: spritePath.svgTemplate.SRC + svgTemplate
						}
					}
				}
			},
			variables: {
				mapname: "icons"
			}
		}))
		.pipe(gulp.dest(destinationPath))
		.pipe(notify(notifySVG));
});

gulp.task('sprite', ['svgSprite']);

//the title and icon that will be used for the Grunt notifications
var notifySVG = {
	title: 'Good job :)',
	message: 'SVG Sprite is created!',
	icon: path.join(__dirname, 'assets/img/logo.jpg'),
	time: 2000,
	sound: true
};

var notifyStyles = {
	title: 'Good job :)',
	message: 'Styles are compiled!',
	icon: path.join(__dirname, 'assets/img/logo.jpg'),
	time: 2000,
	sound: true
};

//error notification settings for plumber
var plumberErrorHandler = { errorHandler: notify.onError({
	title: 'There was some Error, I think...',
	message: "Error message: <%= error.message %>"
})
};

//optimizing images
gulp.task('images', function() {
  return gulp.src('assets/img/**/*.+(png|jpg|jpeg|gif|svg)')
	.pipe(imagemin({
	  interlaced: true,
	  progressive: true
	}))
	.pipe(gulp.dest('assets/img'));
});

//styles
gulp.task('styles', function() {
	return gulp.src(['scss/**/*.scss'])
		.pipe(plumber(plumberErrorHandler))
		.pipe(compass({
			css: 'assets/css',
			sass: 'scss',
			image: 'assets/img'
		}))
		.pipe(autoprefixer({ browsers: ['last 2 versions'], remove: false }))
		.pipe(gulp.dest('assets/css'))
		//.pipe(cleanCSS())
		//.pipe(gulp.dest('assets/css'))
		.pipe(notify(notifyStyles))
		.pipe(browserSync.stream());
});

//icon fonts
gulp.task('iconfont', function(){
  return gulp.src(['assets/svg/*.svg'])
	.pipe(iconfontCss({
		fontName: 'webicons',
		cssClass: 'font',
		path: 'conf/icon-font.scss',
		targetPath: '../../scss/layout/_icon-font.scss',
		fontPath: '../fonts/'
	}))
	.pipe(iconfont({
		fontName: 'webicons', // required
		prependUnicode: false, // recommended option
		formats: ['ttf', 'eot', 'woff'], // default, 'woff2' and 'svg' are available
		normalize: true,
		centerHorizontally: true
	}))
	.on('glyphs', function(glyphs, options) {
		// CSS templating, e.g.
		console.log(glyphs, options);
	})
	.pipe(gulp.dest('assets/fonts/'));
});

// Browser Sync
gulp.task('browser-sync', ['styles'], function() {

    browserSync.init({
        server: "./"
    });

    gulp.watch('scss/**/*.scss', ['styles']);
    gulp.watch("**/*.html").on('change', browserSync.reload);
});

gulp.task('browser', ['browser-sync']);

//watch
gulp.task('default', function() {
	//watch .scss files
	gulp.watch('scss/**/*.scss', ['styles']);
	//watch svg icons and create a sprite
	gulp.watch(spritePath.newSprite.SRC, ['sprite']).on('change', function(evt) {
		changeEvent(evt);
	});
});
