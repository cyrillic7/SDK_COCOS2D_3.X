.class public Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/core/beans/IBeanResponse;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$Algorithm;,
        Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ProtocolItem;,
        Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ProtocolInfo;,
        Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;,
        Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;,
        Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x64dcda21b3663581L


# instance fields
.field public algorithm_check_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$Algorithm;

.field public card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

.field public channel_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;

.field public protocol_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ProtocolInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkResponseValidity()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->channel_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public storeResponse(Landroid/content/Context;)V
    .registers 2

    return-void
.end method
