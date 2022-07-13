.class public abstract Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub;
.super Landroid/os/Binder;
.source "IMediaBrowserServiceCompatCallbacks.java"

# interfaces
.implements Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.v4.media.IMediaBrowserServiceCompatCallbacks"

.field static final TRANSACTION_onConnect:I = 0x1

.field static final TRANSACTION_onConnectFailed:I = 0x2

.field static final TRANSACTION_onLoadChildren:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.support.v4.media.IMediaBrowserServiceCompatCallbacks"

    .line 20
    invoke-virtual {p0, p0, v0}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.support.v4.media.IMediaBrowserServiceCompatCallbacks"

    .line 31
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 32
    instance-of v1, v0, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    return-object v0

    .line 35
    :cond_1
    new-instance v0, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.support.v4.media.IMediaBrowserServiceCompatCallbacks"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 47
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 80
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    .line 85
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p2

    .line 86
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub;->onLoadChildren(Ljava/lang/String;Ljava/util/List;)V

    return v1

    .line 74
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub;->onConnectFailed()V

    return v1

    .line 52
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_4

    .line 57
    sget-object p3, Landroid/support/v4/media/session/MediaSessionCompat$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    goto :goto_0

    :cond_4
    move-object p3, p4

    .line 63
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 64
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object p4, p2

    check-cast p4, Landroid/os/Bundle;

    .line 69
    :cond_5
    invoke-virtual {p0, p1, p3, p4}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub;->onConnect(Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V

    return v1
.end method
