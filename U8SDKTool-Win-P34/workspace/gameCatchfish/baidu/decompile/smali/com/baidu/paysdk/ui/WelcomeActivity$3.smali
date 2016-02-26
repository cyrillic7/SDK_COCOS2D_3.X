.class Lcom/baidu/paysdk/ui/WelcomeActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/base/controllers/PayController$a;


# instance fields
.field final synthetic this$0:Lcom/baidu/paysdk/ui/WelcomeActivity;

.field final synthetic val$cr:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;


# direct methods
.method constructor <init>(Lcom/baidu/paysdk/ui/WelcomeActivity;Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;)V
    .registers 3

    iput-object p1, p0, Lcom/baidu/paysdk/ui/WelcomeActivity$3;->this$0:Lcom/baidu/paysdk/ui/WelcomeActivity;

    iput-object p2, p0, Lcom/baidu/paysdk/ui/WelcomeActivity$3;->val$cr:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmed()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/WelcomeActivity$3;->this$0:Lcom/baidu/paysdk/ui/WelcomeActivity;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/WelcomeActivity$3;->val$cr:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/ui/WelcomeActivity;->selectPayType(Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;)V

    return-void
.end method
