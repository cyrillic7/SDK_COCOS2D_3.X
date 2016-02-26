.class public Lcom/baidu/wallet/base/datamodel/UserData$UserModel$Score;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/wallet/base/datamodel/UserData$UserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Score"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x86b185ef0d1d8d5L


# instance fields
.field public can_cash:Ljava/lang/String;

.field public score_num:Ljava/lang/String;

.field public score_tip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasScore()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/wallet/base/datamodel/UserData$UserModel$Score;->score_num:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/baidu/wallet/base/datamodel/UserData$UserModel$Score;->can_cash:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    :try_start_12
    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/baidu/wallet/base/datamodel/UserData$UserModel$Score;->score_num:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1e} :catch_23

    move-result v1

    if-lez v1, :cond_11

    const/4 v0, 0x1

    goto :goto_11

    :catch_23
    move-exception v1

    goto :goto_11
.end method
