.class Landroid/media/RemoteController$PlaybackInfo;
.super Ljava/lang/Object;
.source "RemoteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlaybackInfo"
.end annotation


# instance fields
.field mCurrentPosMs:J

.field mSpeed:F

.field mState:I

.field mStateChangeTimeMs:J


# direct methods
.method constructor <init>(IJJF)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "stateChangeTimeMs"    # J
    .param p4, "currentPosMs"    # J
    .param p6, "speed"    # F

    .prologue
    .line 867
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 868
    iput p1, p0, Landroid/media/RemoteController$PlaybackInfo;->mState:I

    .line 869
    iput-wide p2, p0, Landroid/media/RemoteController$PlaybackInfo;->mStateChangeTimeMs:J

    .line 870
    iput-wide p4, p0, Landroid/media/RemoteController$PlaybackInfo;->mCurrentPosMs:J

    .line 871
    iput p6, p0, Landroid/media/RemoteController$PlaybackInfo;->mSpeed:F

    .line 867
    return-void
.end method
