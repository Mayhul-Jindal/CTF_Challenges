.class Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;
.super Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;


# direct methods
.method private constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V
    .locals 0

    .line 157
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {p0}, Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/support/v4/media/MediaBrowserServiceCompat$1;)V
    .locals 0

    .line 157
    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    return-void
.end method


# virtual methods
.method public addSubscription(Ljava/lang/String;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
    .locals 2

    .line 231
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$300(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$3;

    invoke-direct {v1, p0, p2, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$3;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
    .locals 8

    .line 162
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 163
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v0, p1, v5}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$000(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$300(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$1;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;Landroid/os/Bundle;I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 164
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Package/uid mismatch: uid="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " package="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public disconnect(Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
    .locals 2

    .line 213
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$300(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$2;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$2;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getMediaItem(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V
    .locals 2

    .line 273
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 277
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$300(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$5;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$5;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public removeSubscription(Ljava/lang/String;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
    .locals 2

    .line 252
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$300(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$4;

    invoke-direct {v1, p0, p2, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$4;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
