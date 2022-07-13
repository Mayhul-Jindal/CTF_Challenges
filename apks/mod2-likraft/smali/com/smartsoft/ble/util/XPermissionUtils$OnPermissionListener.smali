.class public interface abstract Lcom/smartsoft/ble/util/XPermissionUtils$OnPermissionListener;
.super Ljava/lang/Object;
.source "XPermissionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartsoft/ble/util/XPermissionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPermissionListener"
.end annotation


# virtual methods
.method public abstract onPermissionDenied([Ljava/lang/String;Z)V
.end method

.method public abstract onPermissionGranted()V
.end method
