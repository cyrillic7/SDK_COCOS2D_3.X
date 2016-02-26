.class final Lcom/atet/api/pay/ui/service/l111ll1111;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic l1l111lll1:Lcom/atet/api/pay/ui/service/l11l11l1l1;


# direct methods
.method constructor <init>(Lcom/atet/api/pay/ui/service/l11l11l1l1;)V
    .registers 2

    iput-object p1, p0, Lcom/atet/api/pay/ui/service/l111ll1111;->l1l111lll1:Lcom/atet/api/pay/ui/service/l11l11l1l1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    packed-switch p2, :pswitch_data_32

    :goto_3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_7
    iget-object v0, p0, Lcom/atet/api/pay/ui/service/l111ll1111;->l1l111lll1:Lcom/atet/api/pay/ui/service/l11l11l1l1;

    invoke-static {v0}, Lcom/atet/api/pay/ui/service/l11l11l1l1;->l1l111lll1(Lcom/atet/api/pay/ui/service/l11l11l1l1;)Lcom/atet/api/pay/ui/service/l1lll1l1l1;

    iget-object v0, p0, Lcom/atet/api/pay/ui/service/l111ll1111;->l1l111lll1:Lcom/atet/api/pay/ui/service/l11l11l1l1;

    invoke-static {v0}, Lcom/atet/api/pay/ui/service/l11l11l1l1;->l1l111lll1(Lcom/atet/api/pay/ui/service/l11l11l1l1;)Lcom/atet/api/pay/ui/service/l1lll1l1l1;

    move-result-object v0

    invoke-static {v0}, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1lll1l1l1(Lcom/atet/api/pay/ui/service/l1lll1l1l1;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "http://www.at-et.cn/atettv/ATET_Market_Tv.apk"

    invoke-static {v0, v1}, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1l111lll1(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_1c
    iget-object v0, p0, Lcom/atet/api/pay/ui/service/l111ll1111;->l1l111lll1:Lcom/atet/api/pay/ui/service/l11l11l1l1;

    invoke-static {v0}, Lcom/atet/api/pay/ui/service/l11l11l1l1;->l1l111lll1(Lcom/atet/api/pay/ui/service/l11l11l1l1;)Lcom/atet/api/pay/ui/service/l1lll1l1l1;

    iget-object v0, p0, Lcom/atet/api/pay/ui/service/l111ll1111;->l1l111lll1:Lcom/atet/api/pay/ui/service/l11l11l1l1;

    invoke-static {v0}, Lcom/atet/api/pay/ui/service/l11l11l1l1;->l1l111lll1(Lcom/atet/api/pay/ui/service/l11l11l1l1;)Lcom/atet/api/pay/ui/service/l1lll1l1l1;

    move-result-object v0

    invoke-static {v0}, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1lll1l1l1(Lcom/atet/api/pay/ui/service/l1lll1l1l1;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "http://www.at-et.cn/atetapp/ATET_Market_Phone.apk"

    invoke-static {v0, v1}, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1l111lll1(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_7
        :pswitch_1c
    .end packed-switch
.end method
