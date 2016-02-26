.class Lcom/baidu/bdgame/sdk/obf/ds$n;
.super Lcom/baidu/bdgame/sdk/obf/ds$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/ds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/bdgame/sdk/obf/ds$g",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/fd;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ds$g;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/baidu/bdgame/sdk/obf/dm;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/fd;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 316
    const-string v0, "RechargeCard"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v2

    .line 402
    :goto_a
    return v0

    .line 320
    :cond_b
    new-instance v3, Lcom/baidu/bdgame/sdk/obf/fd;

    invoke-direct {v3}, Lcom/baidu/bdgame/sdk/obf/fd;-><init>()V

    .line 323
    const-string v0, "BankID"

    invoke-static {p3, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 325
    const-class v0, Lcom/baidu/bdgame/sdk/obf/ds$n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BankID absent:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 326
    goto :goto_a

    .line 328
    :cond_3e
    invoke-virtual {v3, v0}, Lcom/baidu/bdgame/sdk/obf/fd;->a(Ljava/lang/String;)V

    .line 348
    const-string v0, "AmountList"

    invoke-static {p3, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_175

    .line 350
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 352
    :goto_4e
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 353
    const-class v0, Lcom/baidu/bdgame/sdk/obf/ds$n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AmountList absent:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 354
    goto :goto_a

    .line 356
    :cond_76
    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ds;->b(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ka;

    move-result-object v4

    .line 357
    iget-object v0, v4, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v5, :cond_8a

    iget-object v0, v4, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_a9

    .line 358
    :cond_8a
    const-class v0, Lcom/baidu/bdgame/sdk/obf/ds$n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AmountList format error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 359
    goto/16 :goto_a

    .line 361
    :cond_a9
    iget-object v0, v4, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v3, v0}, Lcom/baidu/bdgame/sdk/obf/fd;->a(Ljava/util/List;)V

    .line 365
    iget-object v0, v4, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, v4, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/baidu/bdgame/sdk/obf/dm;->b(J)V

    .line 369
    const-string v0, "CardNoLengthLimit"

    invoke-static {p3, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    if-eqz v0, :cond_172

    .line 371
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 373
    :goto_d8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_118

    .line 374
    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ds;->c(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ka;

    move-result-object v4

    .line 375
    iget-object v0, v4, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v5, :cond_f2

    iget-object v0, v4, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_111

    .line 376
    :cond_f2
    const-class v0, Lcom/baidu/bdgame/sdk/obf/ds$n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CardNoLengthLimit format error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 377
    goto/16 :goto_a

    .line 380
    :cond_111
    iget-object v0, v4, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v3, v0}, Lcom/baidu/bdgame/sdk/obf/fd;->b(Ljava/util/List;)V

    .line 385
    :cond_118
    const-string v0, "CardPswLengthLimit"

    invoke-static {p3, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    if-eqz v0, :cond_170

    .line 387
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 389
    :goto_125
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_165

    .line 390
    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ds;->c(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ka;

    move-result-object v4

    .line 391
    iget-object v0, v4, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v5, :cond_13f

    iget-object v0, v4, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_15e

    .line 392
    :cond_13f
    const-class v0, Lcom/baidu/bdgame/sdk/obf/ds$n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CardPswLengthLimit format error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 393
    goto/16 :goto_a

    .line 396
    :cond_15e
    iget-object v0, v4, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v3, v0}, Lcom/baidu/bdgame/sdk/obf/fd;->c(Ljava/util/List;)V

    .line 400
    :cond_165
    invoke-virtual {p4, v3}, Lcom/baidu/bdgame/sdk/obf/dm;->a(Ljava/lang/Object;)V

    .line 401
    const-string v0, "RechargeCardPay"

    invoke-virtual {p4, v0}, Lcom/baidu/bdgame/sdk/obf/dm;->f(Ljava/lang/String;)V

    .line 402
    const/4 v0, 0x1

    goto/16 :goto_a

    :cond_170
    move-object v1, v0

    goto :goto_125

    :cond_172
    move-object v1, v0

    goto/16 :goto_d8

    :cond_175
    move-object v1, v0

    goto/16 :goto_4e
.end method
