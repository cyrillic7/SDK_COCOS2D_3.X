.class Lcom/baidu/paysdk/ui/SelectPayActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$0:Lcom/baidu/paysdk/ui/SelectPayActivity;


# direct methods
.method constructor <init>(Lcom/baidu/paysdk/ui/SelectPayActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/SelectPayActivity$1;->this$0:Lcom/baidu/paysdk/ui/SelectPayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectPayActivity$1;->this$0:Lcom/baidu/paysdk/ui/SelectPayActivity;

    invoke-virtual {v0}, Lcom/baidu/paysdk/ui/SelectPayActivity;->bindCardPay()V

    return-void
.end method
