.class Lcom/smartsoft/ble/util/JCrashHandler$1;
.super Ljava/lang/Object;
.source "JCrashHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartsoft/ble/util/JCrashHandler;->writeStringToFile(Ljava/lang/String;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartsoft/ble/util/JCrashHandler;

.field final synthetic val$errorMessage:Ljava/lang/String;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/smartsoft/ble/util/JCrashHandler;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/smartsoft/ble/util/JCrashHandler$1;->this$0:Lcom/smartsoft/ble/util/JCrashHandler;

    iput-object p2, p0, Lcom/smartsoft/ble/util/JCrashHandler$1;->val$errorMessage:Ljava/lang/String;

    iput-object p3, p0, Lcom/smartsoft/ble/util/JCrashHandler$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x0

    .line 76
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/smartsoft/ble/util/JCrashHandler$1;->val$errorMessage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 77
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/smartsoft/ble/util/JCrashHandler$1;->val$file:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x400

    :try_start_1
    new-array v0, v0, [B

    .line 80
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    .line 81
    invoke-virtual {v2, v0, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    const-string v0, "\u7a0b\u5e8f\u51fa\u5f02\u5e38\u4e86"

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5199\u5165\u672c\u5730\u6587\u4ef6\u6210\u529f\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartsoft/ble/util/JCrashHandler$1;->val$file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 92
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 88
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    .line 92
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_3
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 86
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_1

    .line 92
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_3
    return-void

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v2, :cond_2

    .line 92
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_5

    :catch_5
    move-exception v1

    .line 94
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 97
    :cond_2
    :goto_5
    throw v0
.end method
