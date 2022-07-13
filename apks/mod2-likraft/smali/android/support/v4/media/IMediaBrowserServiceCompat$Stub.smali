.class public abstract Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub;
.super Landroid/os/Binder;
.source "IMediaBrowserServiceCompat.java"

# interfaces
.implements Landroid/support/v4/media/IMediaBrowserServiceCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/IMediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.v4.media.IMediaBrowserServiceCompat"

.field static final TRANSACTION_addSubscription:I = 0x3

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_getMediaItem:I = 0x5

.field static final TRANSACTION_removeSubscription:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.support.v4.media.IMediaBrowserServiceCompat"

    .line 20
    invoke-virtual {p0, p0, v0}, Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaBrowserServiceCompat;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.support.v4.media.IMediaBrowserServiceCompat"

    .line 31
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 32
    instance-of v1, v0, Landroid/support/v4/media/IMediaBrowserServiceCompat;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/support/v4/media/IMediaBrowserServiceCompat;

    return-object v0

    .line 35
    :cond_1
    new-instance v0, Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "android.support.v4.media.IMediaBrowserServiceCompat"

    const/4 v2, 0x1

    if-eq p1, v2, :cond_6

    const/4 v3, 0x2

    if-eq p1, v3, :cond_5

    const/4 v3, 0x3

    if-eq p1, v3, :cond_4

    const/4 v3, 0x4

    if-eq p1, v3, :cond_3

    const/4 v3, 0x5

    if-eq p1, v3, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 47
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 97
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_2

    .line 102
    sget-object p3, Landroid/support/v4/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/support/v4/os/ResultReceiver;

    .line 107
    :cond_2
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub;->getMediaItem(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V

    return v2

    .line 87
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    move-result-object p2

    .line 92
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub;->removeSubscription(Ljava/lang/String;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V

    return v2

    .line 77
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    move-result-object p2

    .line 82
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub;->addSubscription(Ljava/lang/String;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V

    return v2

    .line 69
    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    move-result-object p1

    .line 72
    invoke-virtual {p0, p1}, Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub;->disconnect(Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V

    return v2

    .line 52
    :cond_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_7

    .line 57
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Landroid/os/Bundle;

    .line 63
    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    move-result-object p2

    .line 64
    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub;->connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V

    return v2
.end method
