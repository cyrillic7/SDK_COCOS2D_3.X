.class final Lcom/unionpay/mobile/android/widgets/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/widgets/p;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/widgets/p;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/s;->a:Lcom/unionpay/mobile/android/widgets/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/s;->a:Lcom/unionpay/mobile/android/widgets/p;

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/widgets/p;->a(Lcom/unionpay/mobile/android/widgets/p;Landroid/view/View;)V

    return-void
.end method
