.class Lcom/baidu/paysdk/ui/SelectBindCardActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/baidu/paysdk/ui/SelectBindCardActivity;


# direct methods
.method constructor <init>(Lcom/baidu/paysdk/ui/SelectBindCardActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity$2;->this$0:Lcom/baidu/paysdk/ui/SelectBindCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity$2;->this$0:Lcom/baidu/paysdk/ui/SelectBindCardActivity;

    # invokes: Lcom/baidu/paysdk/ui/SelectBindCardActivity;->useNewCard()V
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->access$400(Lcom/baidu/paysdk/ui/SelectBindCardActivity;)V

    return-void
.end method
