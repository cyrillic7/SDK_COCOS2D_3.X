.class Lcom/baidu/paysdk/ui/SelectBindCardActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/baidu/paysdk/ui/SelectBindCardActivity;


# direct methods
.method constructor <init>(Lcom/baidu/paysdk/ui/SelectBindCardActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity$3;->this$0:Lcom/baidu/paysdk/ui/SelectBindCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity$3;->this$0:Lcom/baidu/paysdk/ui/SelectBindCardActivity;

    const-class v1, Lcom/baidu/paysdk/ui/PcPwdCheckActivity;

    const/16 v2, 0xb2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->startActivityForResult(Ljava/lang/Class;I)V

    return-void
.end method
