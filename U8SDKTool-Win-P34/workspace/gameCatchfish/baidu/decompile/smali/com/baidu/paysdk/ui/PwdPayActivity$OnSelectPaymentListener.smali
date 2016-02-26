.class interface abstract Lcom/baidu/paysdk/ui/PwdPayActivity$OnSelectPaymentListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/paysdk/ui/PwdPayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "OnSelectPaymentListener"
.end annotation


# virtual methods
.method public abstract onCountPayAmount(ZZILcom/baidu/paysdk/ui/PwdPayActivity$OnCountPayAmountListener;)V
.end method

.method public abstract onNewCard(Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;)V
.end method

.method public abstract onResult(Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;)V
.end method
