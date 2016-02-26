.class final Lcom/unionpay/mobile/android/pboctransaction/icfcc/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/icfcc/b;->a:Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/icfcc/b;->a:Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;

    invoke-static {p2}, Lcn/gov/pbc/tsm/client/mobile/android/bank/service/a$a;->a(Landroid/os/IBinder;)Lcn/gov/pbc/tsm/client/mobile/android/bank/service/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;->a(Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;Lcn/gov/pbc/tsm/client/mobile/android/bank/service/a;)Lcn/gov/pbc/tsm/client/mobile/android/bank/service/a;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/icfcc/b;->a:Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;->a(Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;)Lcom/unionpay/mobile/android/pboctransaction/b;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/icfcc/b;->a:Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;->a(Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;)Lcom/unionpay/mobile/android/pboctransaction/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/unionpay/mobile/android/pboctransaction/b;->a()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    :cond_1a
    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/icfcc/b;->a:Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;->a(Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;)Lcom/unionpay/mobile/android/pboctransaction/b;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/icfcc/b;->a:Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;->a(Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;)Lcom/unionpay/mobile/android/pboctransaction/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/unionpay/mobile/android/pboctransaction/b;->b()V

    goto :goto_1a
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/icfcc/b;->a:Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;->a(Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;Lcn/gov/pbc/tsm/client/mobile/android/bank/service/a;)Lcn/gov/pbc/tsm/client/mobile/android/bank/service/a;

    return-void
.end method
