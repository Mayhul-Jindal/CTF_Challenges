.class Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$4;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->removeSubscription(Ljava/lang/String;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;

.field final synthetic val$callbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;)V
    .locals 0

    .line 252
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$4;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$4;->val$callbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$4;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 255
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$4;->val$callbacks:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    invoke-interface {v0}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 257
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$4;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v1}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$100(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    const-string v1, "MediaBrowserServiceCompat"

    if-nez v0, :cond_0

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSubscription for callback that isn\'t registered id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$4;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 263
    :cond_0
    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashSet;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$4;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSubscription called for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinder$4;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " which is not subscribed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
