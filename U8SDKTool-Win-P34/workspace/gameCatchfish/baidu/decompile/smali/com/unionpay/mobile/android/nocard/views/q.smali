.class final Lcom/unionpay/mobile/android/nocard/views/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/nocard/views/o;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/nocard/views/o;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/q;->a:Lcom/unionpay/mobile/android/nocard/views/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/q;->a:Lcom/unionpay/mobile/android/nocard/views/o;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/q;->a:Lcom/unionpay/mobile/android/nocard/views/o;

    invoke-static {v1}, Lcom/unionpay/mobile/android/nocard/views/o;->c(Lcom/unionpay/mobile/android/nocard/views/o;)Lcom/unionpay/mobile/android/upwidget/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upwidget/a;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/q;->a:Lcom/unionpay/mobile/android/nocard/views/o;

    invoke-static {v2}, Lcom/unionpay/mobile/android/nocard/views/o;->c(Lcom/unionpay/mobile/android/nocard/views/o;)Lcom/unionpay/mobile/android/upwidget/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unionpay/mobile/android/upwidget/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unionpay/mobile/android/nocard/views/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
