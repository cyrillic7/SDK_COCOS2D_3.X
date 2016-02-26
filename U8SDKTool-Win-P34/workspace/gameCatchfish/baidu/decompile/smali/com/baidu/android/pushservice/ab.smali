.class Lcom/baidu/android/pushservice/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/baidu/android/pushservice/RegistrationReceiver;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/RegistrationReceiver;Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;)V
    .registers 5

    iput-object p1, p0, Lcom/baidu/android/pushservice/ab;->d:Lcom/baidu/android/pushservice/RegistrationReceiver;

    iput-object p2, p0, Lcom/baidu/android/pushservice/ab;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/android/pushservice/ab;->b:Landroid/content/Intent;

    iput-object p4, p0, Lcom/baidu/android/pushservice/ab;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const-string v0, "com.baidu.android.pushservice.action.BIND_SYNC"

    iget-object v1, p0, Lcom/baidu/android/pushservice/ab;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/baidu/android/pushservice/ab;->b:Landroid/content/Intent;

    const-string v1, "r_sync_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/baidu/android/pushservice/ab;->b:Landroid/content/Intent;

    const-string v1, "r_sync_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_4a

    :cond_20
    :goto_20
    return-void

    :pswitch_21
    iget-object v0, p0, Lcom/baidu/android/pushservice/ab;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/android/pushservice/ab;->b:Landroid/content/Intent;

    # invokes: Lcom/baidu/android/pushservice/RegistrationReceiver;->handleRegisterSync(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/RegistrationReceiver;->access$000(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_20

    :pswitch_29
    iget-object v0, p0, Lcom/baidu/android/pushservice/ab;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/android/pushservice/ab;->b:Landroid/content/Intent;

    # invokes: Lcom/baidu/android/pushservice/RegistrationReceiver;->handleRegisterWebSync(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/RegistrationReceiver;->access$100(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_20

    :pswitch_31
    iget-object v0, p0, Lcom/baidu/android/pushservice/ab;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/android/pushservice/ab;->b:Landroid/content/Intent;

    # invokes: Lcom/baidu/android/pushservice/RegistrationReceiver;->handleRegisterLappSync(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/RegistrationReceiver;->access$200(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_20

    :pswitch_39
    iget-object v0, p0, Lcom/baidu/android/pushservice/ab;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/android/pushservice/ab;->b:Landroid/content/Intent;

    # invokes: Lcom/baidu/android/pushservice/RegistrationReceiver;->handleRegisterSDKSync(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/RegistrationReceiver;->access$300(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_20

    :cond_41
    iget-object v0, p0, Lcom/baidu/android/pushservice/ab;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/android/pushservice/ab;->b:Landroid/content/Intent;

    # invokes: Lcom/baidu/android/pushservice/RegistrationReceiver;->handleRegisterSync(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/RegistrationReceiver;->access$000(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_20

    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_21
        :pswitch_29
        :pswitch_31
        :pswitch_39
    .end packed-switch
.end method
