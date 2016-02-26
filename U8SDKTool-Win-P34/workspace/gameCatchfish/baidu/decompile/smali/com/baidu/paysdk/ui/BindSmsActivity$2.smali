.class Lcom/baidu/paysdk/ui/BindSmsActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/baidu/paysdk/ui/BindSmsActivity;


# direct methods
.method constructor <init>(Lcom/baidu/paysdk/ui/BindSmsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/BindSmsActivity$2;->this$0:Lcom/baidu/paysdk/ui/BindSmsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity$2;->this$0:Lcom/baidu/paysdk/ui/BindSmsActivity;

    # invokes: Lcom/baidu/paysdk/ui/BindSmsActivity;->getMessageCode()V
    invoke-static {v0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->access$100(Lcom/baidu/paysdk/ui/BindSmsActivity;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindSmsActivity$2;->this$0:Lcom/baidu/paysdk/ui/BindSmsActivity;

    # getter for: Lcom/baidu/paysdk/ui/BindSmsActivity;->mMessageNcode:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/BindSmsActivity;->access$200(Lcom/baidu/paysdk/ui/BindSmsActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
