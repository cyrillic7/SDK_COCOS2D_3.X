.class final Lcom/unionpay/mobile/android/nocard/views/au;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/nocard/views/as;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/nocard/views/as;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/au;->a:Lcom/unionpay/mobile/android/nocard/views/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "errMsg"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/au;->a:Lcom/unionpay/mobile/android/nocard/views/as;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/nocard/views/as;->a(Ljava/lang/String;)V

    :goto_19
    return-void

    :cond_1a
    const-string v1, "action"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-static {v0, v2}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/au;->a:Lcom/unionpay/mobile/android/nocard/views/as;

    invoke-static {v2, v1, v0}, Lcom/unionpay/mobile/android/nocard/views/as;->a(Lcom/unionpay/mobile/android/nocard/views/as;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19
.end method
