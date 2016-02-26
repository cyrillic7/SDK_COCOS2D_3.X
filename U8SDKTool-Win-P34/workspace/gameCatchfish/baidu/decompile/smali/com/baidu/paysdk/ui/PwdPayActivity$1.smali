.class Lcom/baidu/paysdk/ui/PwdPayActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/paysdk/ui/PwdPayActivity$OnCountPayAmountListener;


# instance fields
.field final synthetic this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;


# direct methods
.method constructor <init>(Lcom/baidu/paysdk/ui/PwdPayActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$1;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(ILcom/baidu/paysdk/datamodel/PayRequest$PayPrice;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_21

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$1;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    # setter for: Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;
    invoke-static {v0, p2}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$002(Lcom/baidu/paysdk/ui/PwdPayActivity;Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;)Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$1;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    # getter for: Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$100(Lcom/baidu/paysdk/ui/PwdPayActivity;)Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    move-result-object v0

    iput-object p4, v0, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->channelActivityDesc:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$1;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    # getter for: Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$100(Lcom/baidu/paysdk/ui/PwdPayActivity;)Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    move-result-object v0

    iput-object p3, v0, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->channelActivityIds:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$1;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    # invokes: Lcom/baidu/paysdk/ui/PwdPayActivity;->storeParams()V
    invoke-static {v0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$200(Lcom/baidu/paysdk/ui/PwdPayActivity;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$1;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    # invokes: Lcom/baidu/paysdk/ui/PwdPayActivity;->displayPayAmount()V
    invoke-static {v0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$300(Lcom/baidu/paysdk/ui/PwdPayActivity;)V

    :cond_21
    return-void
.end method
