.class final Lcom/unionpay/mobile/android/pro/views/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/pro/views/e;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/pro/views/e;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/j;->a:Lcom/unionpay/mobile/android/pro/views/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/j;->a:Lcom/unionpay/mobile/android/pro/views/e;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/views/e;->n(Lcom/unionpay/mobile/android/pro/views/e;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/j;->a:Lcom/unionpay/mobile/android/pro/views/e;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/views/e;->o(Lcom/unionpay/mobile/android/pro/views/e;)Lcom/unionpay/mobile/android/widgets/m;

    move-result-object v0

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/j;->a:Lcom/unionpay/mobile/android/pro/views/e;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/j;->a:Lcom/unionpay/mobile/android/pro/views/e;

    invoke-static {v1}, Lcom/unionpay/mobile/android/pro/views/e;->b(Lcom/unionpay/mobile/android/pro/views/e;)Lcom/unionpay/mobile/android/upviews/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upviews/a;->b()Lcom/unionpay/mobile/android/upviews/a$a;

    move-result-object v1

    iget-object v1, v1, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/pro/views/e;->d(Lcom/unionpay/mobile/android/pro/views/e;Ljava/lang/String;)V

    return-void
.end method
