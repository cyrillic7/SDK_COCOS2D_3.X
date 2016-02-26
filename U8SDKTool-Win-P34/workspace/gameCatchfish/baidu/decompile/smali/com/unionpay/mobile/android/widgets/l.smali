.class final Lcom/unionpay/mobile/android/widgets/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/widgets/k;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/widgets/k;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/l;->a:Lcom/unionpay/mobile/android/widgets/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/l;->a:Lcom/unionpay/mobile/android/widgets/k;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/k;->a(Lcom/unionpay/mobile/android/widgets/k;)Z

    move-result v0

    if-eqz v0, :cond_96

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_e
    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/l;->a:Lcom/unionpay/mobile/android/widgets/k;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/k;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7e

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/l;->a:Lcom/unionpay/mobile/android/widgets/k;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/k;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "[A-Za-z0-9]{8,32}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/l;->a:Lcom/unionpay/mobile/android/widgets/k;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/unionpay/mobile/android/widgets/k;->a(Z)V

    const-string v0, "value"

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/l;->a:Lcom/unionpay/mobile/android/widgets/k;

    invoke-virtual {v2}, Lcom/unionpay/mobile/android/widgets/k;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "action"

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/l;->a:Lcom/unionpay/mobile/android/widgets/k;

    invoke-static {v2}, Lcom/unionpay/mobile/android/widgets/k;->b(Lcom/unionpay/mobile/android/widgets/k;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_44
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_44} :catch_79

    :goto_44
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/l;->a:Lcom/unionpay/mobile/android/widgets/k;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/k;->c(Lcom/unionpay/mobile/android/widgets/k;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_51
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_51

    :cond_61
    :try_start_61
    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/languages/c;->aD:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v4, v4, Lcom/unionpay/mobile/android/languages/c;->C:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "errMsg"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_78
    .catch Lorg/json/JSONException; {:try_start_61 .. :try_end_78} :catch_79

    goto :goto_44

    :catch_79
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_44

    :cond_7e
    :try_start_7e
    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/languages/c;->aC:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v4, v4, Lcom/unionpay/mobile/android/languages/c;->C:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "errMsg"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_95
    .catch Lorg/json/JSONException; {:try_start_7e .. :try_end_95} :catch_79

    goto :goto_44

    :cond_96
    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/l;->a:Lcom/unionpay/mobile/android/widgets/k;

    iget-object v0, v0, Lcom/unionpay/mobile/android/widgets/k;->b:Lcom/unionpay/mobile/android/widgets/t;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/t;->e()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/l;->a:Lcom/unionpay/mobile/android/widgets/k;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/k;->a(Z)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/l;->a:Lcom/unionpay/mobile/android/widgets/k;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/k;->d(Lcom/unionpay/mobile/android/widgets/k;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ac
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_ac

    :cond_bc
    return-void
.end method
