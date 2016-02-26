.class public Lcom/baidu/paysdk/datamodel/ErrorContentResponse$MktSolution;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/paysdk/datamodel/ErrorContentResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MktSolution"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public activity_list:[Lcom/baidu/wallet/base/datamodel/PayData$Discount;

.field public amount_before_channel:Ljava/lang/String;

.field public attended_bank_activity_list:Ljava/lang/String;

.field public balance_amount:Ljava/lang/String;

.field public balance_select_desc:Ljava/lang/String;

.field public balance_trans_amount:Ljava/lang/String;

.field public channel_activity_desc:Ljava/lang/String;

.field public coupon_list:[Lcom/baidu/wallet/base/datamodel/PayData$Coupon;

.field public easypay_amount:Ljava/lang/String;

.field public easypay_least_amount:Ljava/lang/String;

.field public easypay_select_desc:Ljava/lang/String;

.field public ebank_amount:Ljava/lang/String;

.field public score_comment:Ljava/lang/String;

.field public score_pay_amount:Ljava/lang/String;

.field public score_pay_fen:Ljava/lang/String;

.field public score_select_desc:Ljava/lang/String;

.field public score_trans_amount:Ljava/lang/String;

.field public score_trans_fen:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
