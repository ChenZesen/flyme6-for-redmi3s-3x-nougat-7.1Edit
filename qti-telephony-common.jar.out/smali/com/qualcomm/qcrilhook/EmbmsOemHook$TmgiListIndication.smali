.class public Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiListIndication;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/EmbmsOemHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TmgiListIndication"
.end annotation


# instance fields
.field public code:I

.field public list:[B

.field public sessions:[B

.field final synthetic this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

.field public traceId:I


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;S)V
    .locals 4

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiListIndication;->this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiListIndication;->list:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiListIndication;->sessions:[B

    iput v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiListIndication;->traceId:I

    iput v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiListIndication;->code:I

    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    sparse-switch v0, :sswitch_data_0

    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "TmgiListIndication: Unexpected Type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Invalid format of byte buffer received in TmgiListIndication"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x4

    if-ne p3, v0, :cond_2

    :cond_1
    :try_start_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiListIndication;->code:I

    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "response code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiListIndication;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    if-eq p3, v0, :cond_1

    :sswitch_1
    invoke-static {p1, p2}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-wrap1(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiListIndication;->list:[B

    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tmgiArray = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiListIndication;->list:[B

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiListIndication;->traceId:I

    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "traceId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiListIndication;->traceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method
