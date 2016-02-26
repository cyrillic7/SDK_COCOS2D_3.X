.class public Lcom/baidu/paysdk/datamodel/QueryPayResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/core/beans/IBeanResponse;


# instance fields
.field public coupon_find_prompt:Ljava/lang/String;

.field public coupon_msg:Ljava/lang/String;

.field public notify:Ljava/lang/String;

.field public paytype_desc:Ljava/lang/String;

.field public score:Ljava/lang/String;

.field public score_tip:Ljava/lang/String;

.field public trans_state:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkResponseValidity()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/QueryPayResponse;->trans_state:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public storeResponse(Landroid/content/Context;)V
    .registers 2

    return-void
.end method
