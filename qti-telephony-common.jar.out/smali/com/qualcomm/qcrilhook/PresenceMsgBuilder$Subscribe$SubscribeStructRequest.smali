.class Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$SubscribeStructRequest;
.super Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SubscribeStructRequest"
.end annotation


# static fields
.field public static final IMSP_SUBSCRIPTION_TYPE:S = 0x1s

.field public static final IMSP_USER_INFO:S = 0x2s


# instance fields
.field mUserInfo:Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_info_struct;

.field subscriptionType:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcrilhook/PresenceOemHook$SubscriptionType;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qualcomm/qcrilhook/PresenceOemHook$SubscriptionType;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;-><init>()V

    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    invoke-virtual {p1}, Lcom/qualcomm/qcrilhook/PresenceOemHook$SubscriptionType;->ordinal()I

    move-result v1

    int-to-long v2, v1

    invoke-direct {v0, v2, v3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;-><init>(J)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$SubscribeStructRequest;->subscriptionType:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    new-instance v0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_info_struct;

    invoke-direct {v0, p2}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_info_struct;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$SubscribeStructRequest;->mUserInfo:Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_info_struct;

    return-void
.end method


# virtual methods
.method public getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$SubscribeStructRequest;->subscriptionType:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$SubscribeStructRequest;->mUserInfo:Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_info_struct;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getTypes()[S
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-array v0, v3, [S

    const/4 v1, 0x0

    aput-short v2, v0, v1

    aput-short v3, v0, v2

    return-object v0
.end method