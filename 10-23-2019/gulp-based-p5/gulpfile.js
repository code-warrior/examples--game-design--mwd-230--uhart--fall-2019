const { watch } = require(`gulp`);
const browserSync = require(`browser-sync`);
const reload = browserSync.reload;

let serve = () => {
    browserSync({
        server: `./`
    });

    // Match all files in the current directory
    watch(`*`).on(`change`, reload);
    watch(`*/*`).on(`change`, reload);
};

exports.serve = serve;
