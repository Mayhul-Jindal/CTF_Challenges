.class public Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;
.super Ljava/lang/Object;
.source "QtAndroidMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerTimedTextListener;,
        Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerVideoSizeChangedListener;,
        Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerSeekCompleteListener;,
        Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerPreparedListener;,
        Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerInfoListener;,
        Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerCompletionListener;,
        Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerBufferingListener;,
        Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerErrorListener;,
        Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$TrackInfo;,
        Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Qt MediaPlayer"


# instance fields
.field private mAudioAttributes:Landroid/media/AudioAttributes;

.field private final mContext:Landroid/content/Context;

.field private mHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mID:J

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMuted:Z

.field private mProgressScheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private mProgressWatcherHandle:Ljava/util/concurrent/ScheduledFuture;

.field private volatile mState:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mUri:Landroid/net/Uri;

.field private mVolume:I


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 80
    iput-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 81
    iput-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mHeaders:Ljava/util/HashMap;

    .line 82
    iput-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mUri:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 85
    iput-boolean v1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMuted:Z

    const/16 v1, 0x64

    .line 86
    iput v1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mVolume:I

    .line 88
    iput-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 89
    iput-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mProgressScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 90
    iput-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mProgressWatcherHandle:Ljava/util/concurrent/ScheduledFuture;

    const/4 v0, 0x1

    .line 122
    iput v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    .line 252
    iput-wide p2, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mID:J

    .line 253
    iput-object p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->setState(I)V

    return-void
.end method

.method static synthetic access$100(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;)J
    .locals 2

    .line 65
    iget-wide v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mID:J

    return-wide v0
.end method

.method private getMimeType(Landroid/media/MediaPlayer$TrackInfo;)Ljava/lang/String;
    .locals 2

    .line 541
    invoke-virtual {p1}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object p1

    const-string v0, "application/octet-stream"

    if-eqz p1, :cond_0

    const-string v1, "mime"

    .line 543
    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private init()V
    .locals 3

    .line 273
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    return-void

    .line 276
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x2

    .line 277
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->setState(I)V

    .line 279
    iget-boolean v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMuted:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mVolume:I

    :goto_0
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->setVolumeHelper(I)V

    .line 280
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->setAudioAttributes(Landroid/media/MediaPlayer;Landroid/media/AudioAttributes;)V

    .line 282
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerBufferingListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerBufferingListener;-><init>(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$1;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 283
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerCompletionListener;

    invoke-direct {v1, p0, v2}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerCompletionListener;-><init>(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$1;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 284
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerInfoListener;

    invoke-direct {v1, p0, v2}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerInfoListener;-><init>(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$1;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 285
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerSeekCompleteListener;

    invoke-direct {v1, p0, v2}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerSeekCompleteListener;-><init>(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$1;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 286
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerVideoSizeChangedListener;

    invoke-direct {v1, p0, v2}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerVideoSizeChangedListener;-><init>(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$1;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 287
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerErrorListener;

    invoke-direct {v1, p0, v2}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerErrorListener;-><init>(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$1;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 288
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerPreparedListener;

    invoke-direct {v1, p0, v2}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerPreparedListener;-><init>(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$1;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 289
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerTimedTextListener;

    invoke-direct {v1, p0, v2}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerTimedTextListener;-><init>(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$1;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnTimedTextListener(Landroid/media/MediaPlayer$OnTimedTextListener;)V

    const/4 v0, 0x1

    .line 291
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mProgressScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private isMediaPlayerPrepared()Z
    .locals 1

    .line 497
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    and-int/lit16 v0, v0, 0x1e8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static setAudioAttributes(Landroid/media/MediaPlayer;Landroid/media/AudioAttributes;)V
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 757
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Qt MediaPlayer"

    .line 759
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private setState(I)V
    .locals 2

    .line 263
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 266
    :cond_0
    iput p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    .line 268
    iget p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    iget-wide v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mID:J

    invoke-virtual {p0, p1, v0, v1}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->onStateChangedNative(IJ)V

    return-void
.end method

.method private setVolumeHelper(I)V
    .locals 1

    .line 668
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    and-int/lit16 v0, v0, 0x1fa

    if-nez v0, :cond_0

    return-void

    :cond_0
    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 680
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Qt MediaPlayer"

    .line 682
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public cancelProgressWatcher()V
    .locals 1

    .line 311
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mProgressScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 312
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    :cond_0
    return-void
.end method

.method public deselectTrack(I)V
    .locals 2

    .line 565
    invoke-direct {p0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->isMediaPlayerPrepared()Z

    move-result v0

    const-string v1, "Qt MediaPlayer"

    if-nez v0, :cond_0

    const-string p1, "Trying to deselect track of a media player that is not prepared!"

    .line 566
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 572
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->deselectTrack(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 574
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public display()Landroid/view/SurfaceHolder;
    .locals 1

    .line 688
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public getAllTrackInfo()[Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$TrackInfo;
    .locals 8

    .line 502
    invoke-direct {p0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->isMediaPlayerPrepared()Z

    move-result v0

    const-string v1, "Qt MediaPlayer"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "Trying to get track info of a media player that is not prepared!"

    .line 503
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v2, [Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$TrackInfo;

    return-object v0

    :cond_0
    new-array v0, v2, [Landroid/media/MediaPlayer$TrackInfo;

    .line 511
    :try_start_0
    iget-object v3, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 513
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 516
    :goto_0
    array-length v1, v0

    .line 517
    new-array v3, v1, [Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$TrackInfo;

    :goto_1
    if-ge v2, v1, :cond_1

    .line 521
    aget-object v4, v0, v2

    .line 523
    invoke-virtual {v4}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v5

    .line 524
    invoke-direct {p0, v4}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->getMimeType(Landroid/media/MediaPlayer$TrackInfo;)Ljava/lang/String;

    move-result-object v6

    .line 525
    invoke-virtual {v4}, Landroid/media/MediaPlayer$TrackInfo;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 527
    new-instance v7, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$TrackInfo;

    invoke-direct {v7, p0, v5, v6, v4}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$TrackInfo;-><init>(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;ILjava/lang/String;Ljava/lang/String;)V

    aput-object v7, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method public getCurrentPosition()I
    .locals 3

    .line 612
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    and-int/lit16 v0, v0, 0x1fa

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 623
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Qt MediaPlayer"

    .line 625
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public getDuration()I
    .locals 3

    .line 635
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    and-int/lit16 v0, v0, 0x1e8

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 644
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Qt MediaPlayer"

    .line 646
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public getMediaPlayerHandle()Landroid/media/MediaPlayer;
    .locals 1

    .line 258
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public getSelectedTrack(I)I
    .locals 8

    .line 582
    invoke-direct {p0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->isMediaPlayerPrepared()Z

    move-result v0

    const-string v1, "Qt MediaPlayer"

    const/4 v2, -0x1

    if-nez v0, :cond_0

    const-string p1, "Trying to get the selected track of a media player that is not prepared!"

    .line 583
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v0

    :goto_0
    const/4 v5, 0x2

    if-ne p1, v5, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v0

    :goto_1
    const/4 v6, 0x3

    if-ne p1, v6, :cond_3

    move v6, v3

    goto :goto_2

    :cond_3
    move v6, v0

    :goto_2
    const/4 v7, 0x4

    if-ne p1, v7, :cond_4

    move v0, v3

    :cond_4
    if-nez v4, :cond_5

    if-nez v5, :cond_5

    if-nez v0, :cond_5

    if-nez v6, :cond_5

    const-string p1, "Trying to get a selected track of a invalid type Only Video,Audio, TimedText and Subtitle tracks are selectable."

    .line 594
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 601
    :cond_5
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->getSelectedTrack(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 603
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public getVolume()I
    .locals 1

    .line 704
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mVolume:I

    return v0
.end method

.method public initHeaders()V
    .locals 1

    .line 426
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mHeaders:Ljava/util/HashMap;

    return-void
.end method

.method public isMuted()Z
    .locals 1

    .line 715
    iget-boolean v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMuted:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 3

    .line 392
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    and-int/lit16 v0, v0, 0x1fa

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 403
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Qt MediaPlayer"

    .line 405
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public mute(Z)V
    .locals 0

    .line 709
    iput-boolean p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMuted:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 710
    :cond_0
    iget p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mVolume:I

    :goto_0
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->setVolumeHelper(I)V

    return-void
.end method

.method public native onBufferingUpdateNative(IJ)V
.end method

.method public native onDurationChangedNative(IJ)V
.end method

.method public native onErrorNative(IIJ)V
.end method

.method public native onInfoNative(IIJ)V
.end method

.method public native onProgressUpdateNative(IJ)V
.end method

.method public native onStateChangedNative(IJ)V
.end method

.method public native onTimedTextChangedNative(Ljava/lang/String;IJ)V
.end method

.method public native onTrackInfoChangedNative(J)V
.end method

.method public native onVideoSizeChangedNative(IIJ)V
.end method

.method public pause()V
    .locals 2

    .line 335
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    and-int/lit16 v0, v0, 0x1a0

    if-nez v0, :cond_0

    return-void

    .line 339
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/16 v0, 0x80

    .line 340
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->setState(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Qt MediaPlayer"

    .line 342
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public prepareAsync()V
    .locals 2

    .line 413
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    and-int/lit8 v0, v0, 0x50

    if-nez v0, :cond_0

    return-void

    .line 417
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    const/4 v0, 0x4

    .line 418
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->setState(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Qt MediaPlayer"

    .line 420
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 731
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 732
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 733
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 734
    iput-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    const/4 v0, 0x1

    .line 737
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->setState(I)V

    .line 738
    invoke-virtual {p0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->cancelProgressWatcher()V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 720
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 724
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    const/4 v0, 0x2

    .line 725
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->setState(I)V

    .line 726
    invoke-virtual {p0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->cancelProgressWatcher()V

    return-void
.end method

.method public seekTo(I)V
    .locals 3

    .line 369
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    and-int/lit16 v0, v0, 0x1a8

    if-nez v0, :cond_0

    return-void

    .line 377
    :cond_0
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 380
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    int-to-long v1, p1

    const/4 p1, 0x3

    invoke-virtual {v0, v1, v2, p1}, Landroid/media/MediaPlayer;->seekTo(JI)V

    goto :goto_0

    .line 382
    :cond_1
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Qt MediaPlayer"

    .line 385
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public selectTrack(I)V
    .locals 2

    .line 551
    invoke-direct {p0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->isMediaPlayerPrepared()Z

    move-result v0

    const-string v1, "Qt MediaPlayer"

    if-nez v0, :cond_0

    const-string p1, "Trying to select a track of a media player that is not prepared!"

    .line 552
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 557
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->selectTrack(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 559
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setAudioAttributes(II)V
    .locals 1

    .line 743
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 744
    invoke-virtual {v0, p2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p2

    .line 745
    invoke-virtual {p2, p1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 746
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    iput-object p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 748
    iget-object p2, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {p2, p1}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->setAudioAttributes(Landroid/media/MediaPlayer;Landroid/media/AudioAttributes;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 13

    .line 436
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 437
    invoke-direct {p0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->init()V

    .line 439
    :cond_0
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 440
    invoke-virtual {p0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->reset()V

    .line 443
    :cond_1
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    const-string v3, "Qt MediaPlayer"

    if-eq v0, v2, :cond_2

    const-string p1, "Trying to set data source of a media player that is not idle!"

    .line 444
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 448
    :cond_2
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_3

    .line 449
    iget-object v2, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_3
    const/4 v0, 0x0

    const/16 v2, -0x3ec

    const/16 v4, 0x200

    const/16 v5, 0x10

    .line 454
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mUri:Landroid/net/Uri;

    .line 455
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    const-string v7, "assets"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    .line 456
    iget-object p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 457
    iget-object v6, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    .line 458
    invoke-virtual {v6, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 459
    :try_start_1
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v8

    .line 460
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v10

    .line 461
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    .line 462
    iget-object v6, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual/range {v6 .. v11}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v12, v0

    move-object v0, p1

    move-object p1, v12

    goto :goto_1

    :catchall_0
    move-exception v3

    move-object v12, v0

    move-object v0, p1

    move-object p1, v12

    goto/16 :goto_3

    :catch_0
    move-exception v6

    move-object v12, v0

    move-object v0, p1

    move-object p1, v12

    goto :goto_2

    .line 463
    :cond_4
    :try_start_2
    iget-object v6, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    const-string v7, "file"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5

    .line 464
    new-instance p1, Ljava/io/FileInputStream;

    iget-object v6, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p1, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 465
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    .line 466
    iget-object v7, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7, v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catch_1
    move-exception v6

    goto :goto_2

    .line 467
    :cond_5
    :try_start_4
    iget-object v6, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    const-string v7, "content"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_6

    .line 468
    iget-object p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v6, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mUri:Landroid/net/Uri;

    iget-object v8, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mHeaders:Ljava/util/HashMap;

    invoke-virtual {p1, v6, v7, v8}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    goto :goto_0

    .line 470
    :cond_6
    iget-object v6, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_0
    move-object p1, v0

    .line 472
    :goto_1
    :try_start_5
    invoke-direct {p0, v5}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->setState(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v0, :cond_7

    .line 478
    :try_start_6
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_7
    if-eqz p1, :cond_8

    .line 480
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 483
    :catch_2
    :cond_8
    iget p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    and-int/2addr p1, v5

    if-nez p1, :cond_b

    .line 484
    invoke-direct {p0, v4}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->setState(I)V

    .line 485
    iget-wide v3, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mID:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->onErrorNative(IIJ)V

    return-void

    :catchall_1
    move-exception v3

    move-object p1, v0

    goto :goto_3

    :catch_3
    move-exception v6

    move-object p1, v0

    .line 474
    :goto_2
    :try_start_7
    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v0, :cond_9

    .line 478
    :try_start_8
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_9
    if-eqz p1, :cond_a

    .line 480
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 483
    :catch_4
    :cond_a
    iget p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    and-int/2addr p1, v5

    if-nez p1, :cond_b

    .line 484
    invoke-direct {p0, v4}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->setState(I)V

    .line 485
    iget-wide v3, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mID:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->onErrorNative(IIJ)V

    :cond_b
    return-void

    :catchall_2
    move-exception v3

    :goto_3
    if-eqz v0, :cond_c

    .line 478
    :try_start_9
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_c
    if-eqz p1, :cond_d

    .line 480
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 483
    :catch_5
    :cond_d
    iget p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    and-int/2addr p1, v5

    if-nez p1, :cond_e

    .line 484
    invoke-direct {p0, v4}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->setState(I)V

    .line 485
    iget-wide v3, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mID:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->onErrorNative(IIJ)V

    return-void

    .line 490
    :cond_e
    throw v3
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 693
    iput-object p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 695
    iget p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    return-void

    .line 698
    :cond_0
    iget-object p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 431
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mHeaders:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setVolume(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    move p1, v0

    .line 660
    :cond_1
    iput p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mVolume:I

    .line 662
    iget-boolean v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMuted:Z

    if-nez v0, :cond_2

    .line 663
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->setVolumeHelper(I)V

    :cond_2
    return-void
.end method

.method public start()V
    .locals 2

    .line 317
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    and-int/lit16 v0, v0, 0x1a8

    if-nez v0, :cond_0

    return-void

    .line 325
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/16 v0, 0x20

    .line 326
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->setState(I)V

    .line 327
    invoke-virtual {p0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->startProgressWatcher()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Qt MediaPlayer"

    .line 329
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public startProgressWatcher()V
    .locals 8

    .line 297
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mProgressScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mProgressScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 298
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mProgressScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 300
    :cond_1
    iget-object v1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mProgressScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$1;

    invoke-direct {v2, p0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$1;-><init>(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;)V

    const-wide/16 v3, 0xa

    const-wide/16 v5, 0x64

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mProgressWatcherHandle:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public stop()V
    .locals 2

    .line 349
    iget v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mState:I

    and-int/lit16 v0, v0, 0x1e8

    if-nez v0, :cond_0

    return-void

    .line 358
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    const/16 v0, 0x40

    .line 359
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->setState(I)V

    .line 360
    invoke-virtual {p0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->cancelProgressWatcher()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Qt MediaPlayer"

    .line 362
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
