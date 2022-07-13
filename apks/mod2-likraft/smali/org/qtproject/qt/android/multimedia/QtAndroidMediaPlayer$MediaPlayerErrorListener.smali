.class Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerErrorListener;
.super Ljava/lang/Object;
.source "QtAndroidMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaPlayerErrorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;


# direct methods
.method private constructor <init>(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerErrorListener;->this$0:Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$1;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerErrorListener;-><init>(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 135
    iget-object p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerErrorListener;->this$0:Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;

    const/16 v0, 0x200

    invoke-static {p1, v0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->access$000(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;I)V

    .line 136
    iget-object p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerErrorListener;->this$0:Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;

    invoke-static {p1}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->access$100(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;)J

    move-result-wide v0

    invoke-virtual {p1, p2, p3, v0, v1}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->onErrorNative(IIJ)V

    const/4 p1, 0x1

    return p1
.end method
