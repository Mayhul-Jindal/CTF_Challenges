.class public final Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
.super Ljava/lang/Object;
.source "PlaybackStateCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/PlaybackStateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mActions:J

.field private mActiveItemId:J

.field private mBufferedPosition:J

.field private final mCustomActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorMessage:Ljava/lang/CharSequence;

.field private mExtras:Landroid/os/Bundle;

.field private mPosition:J

.field private mRate:F

.field private mState:I

.field private mUpdateTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 760
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mCustomActions:Ljava/util/List;

    const-wide/16 v0, -0x1

    .line 769
    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mActiveItemId:J

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 3

    .line 784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 760
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mCustomActions:Ljava/util/List;

    const-wide/16 v1, -0x1

    .line 769
    iput-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mActiveItemId:J

    .line 785
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->access$300(Landroid/support/v4/media/session/PlaybackStateCompat;)I

    move-result v1

    iput v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mState:I

    .line 786
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->access$400(Landroid/support/v4/media/session/PlaybackStateCompat;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mPosition:J

    .line 787
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->access$500(Landroid/support/v4/media/session/PlaybackStateCompat;)F

    move-result v1

    iput v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mRate:F

    .line 788
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->access$600(Landroid/support/v4/media/session/PlaybackStateCompat;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mUpdateTime:J

    .line 789
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->access$700(Landroid/support/v4/media/session/PlaybackStateCompat;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mBufferedPosition:J

    .line 790
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->access$800(Landroid/support/v4/media/session/PlaybackStateCompat;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mActions:J

    .line 791
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->access$900(Landroid/support/v4/media/session/PlaybackStateCompat;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mErrorMessage:Ljava/lang/CharSequence;

    .line 792
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->access$1000(Landroid/support/v4/media/session/PlaybackStateCompat;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 793
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->access$1000(Landroid/support/v4/media/session/PlaybackStateCompat;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 795
    :cond_0
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->access$1100(Landroid/support/v4/media/session/PlaybackStateCompat;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mActiveItemId:J

    .line 796
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->access$1200(Landroid/support/v4/media/session/PlaybackStateCompat;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mExtras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public addCustomAction(Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 956
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mCustomActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 953
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You may not add a null CustomAction to PlaybackStateCompat."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addCustomAction(Ljava/lang/String;Ljava/lang/String;I)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 7

    .line 937
    new-instance v6, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;Landroid/support/v4/media/session/PlaybackStateCompat$1;)V

    invoke-virtual {p0, v6}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->addCustomAction(Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 20

    move-object/from16 v0, p0

    .line 998
    new-instance v18, Landroid/support/v4/media/session/PlaybackStateCompat;

    move-object/from16 v1, v18

    iget v2, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mState:I

    iget-wide v3, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mPosition:J

    iget-wide v5, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mBufferedPosition:J

    iget v7, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mRate:F

    iget-wide v8, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mActions:J

    iget-object v10, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mErrorMessage:Ljava/lang/CharSequence;

    iget-wide v11, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mUpdateTime:J

    iget-object v13, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mCustomActions:Ljava/util/List;

    iget-wide v14, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mActiveItemId:J

    move-object/from16 v19, v1

    iget-object v1, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mExtras:Landroid/os/Bundle;

    move-object/from16 v16, v1

    const/16 v17, 0x0

    move-object/from16 v1, v19

    invoke-direct/range {v1 .. v17}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJLjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;Landroid/support/v4/media/session/PlaybackStateCompat$1;)V

    return-object v18
.end method

.method public setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 0

    .line 912
    iput-wide p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mActions:J

    return-object p0
.end method

.method public setActiveQueueItemId(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 0

    .line 968
    iput-wide p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mActiveItemId:J

    return-object p0
.end method

.method public setBufferedPosition(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 0

    .line 885
    iput-wide p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mBufferedPosition:J

    return-object p0
.end method

.method public setErrorMessage(Ljava/lang/CharSequence;)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 0

    .line 979
    iput-object p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mErrorMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 0

    .line 990
    iput-object p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 7

    .line 831
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setState(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 0

    .line 870
    iput p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mState:I

    .line 871
    iput-wide p2, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mPosition:J

    .line 872
    iput-wide p5, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mUpdateTime:J

    .line 873
    iput p4, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mRate:F

    return-object p0
.end method
