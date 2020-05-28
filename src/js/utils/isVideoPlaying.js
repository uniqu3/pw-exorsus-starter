/**
 * Check if video is playing
 * @param el
 * @returns boolean
 */
const isVideoPlaying = (el) => {
    if (typeof jQuery === "function" && el instanceof jQuery) el = el[0];
    let video = el;

    return !!(video.currentTime > 0 && !video.paused && !video.ended && video.readyState > 2);
};

export default isVideoPlaying;
