.class public Lcom/baidu/paysdk/datamodel/SupportBankResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/core/beans/IBeanResponse;


# instance fields
.field public bank:[Lcom/baidu/paysdk/datamodel/Bank;

.field public bank_hot:[Lcom/baidu/paysdk/datamodel/Bank;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkResponseValidity()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public storeResponse(Landroid/content/Context;)V
    .registers 2

    return-void
.end method
