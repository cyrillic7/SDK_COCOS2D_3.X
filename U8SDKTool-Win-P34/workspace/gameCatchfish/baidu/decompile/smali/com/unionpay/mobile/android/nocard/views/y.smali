.class final Lcom/unionpay/mobile/android/nocard/views/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/nocard/views/o;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/nocard/views/o;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/y;->a:Lcom/unionpay/mobile/android/nocard/views/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/y;->a:Lcom/unionpay/mobile/android/nocard/views/o;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/y;->a:Lcom/unionpay/mobile/android/nocard/views/o;

    iget-object v2, v2, Lcom/unionpay/mobile/android/nocard/views/o;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/unionpay/mobile/android/nocard/views/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
