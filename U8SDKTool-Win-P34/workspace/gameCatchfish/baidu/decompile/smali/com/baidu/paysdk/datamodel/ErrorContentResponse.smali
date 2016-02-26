.class public Lcom/baidu/paysdk/datamodel/ErrorContentResponse;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/paysdk/datamodel/ErrorContentResponse$MktSolution;
    }
.end annotation


# static fields
.field public static final PAY_BY_SMS_DISABLE:Ljava/lang/String; = "0"

.field public static final PAY_BY_SMS_ENABLE:Ljava/lang/String; = "1"

.field private static final serialVersionUID:J = 0x15d0e34dff8c236dL


# instance fields
.field public mkt_solution:Lcom/baidu/paysdk/datamodel/ErrorContentResponse$MktSolution;

.field public order_amount:Ljava/lang/String;

.field public use_vcode_to_pay:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
