.class public final Lcom/unionpay/mobile/android/pboctransaction/samsung/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unionpay/mobile/android/pboctransaction/c;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/unionpay/mobile/android/pboctransaction/b;

.field private c:Lcom/unionpay/client3/tsm/ITsmConnection;

.field private d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/a;->d:I

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pboctransaction/samsung/a;Lcom/unionpay/client3/tsm/ITsmConnection;)Lcom/unionpay/client3/tsm/ITsmConnection;
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/a;->c:Lcom/unionpay/client3/tsm/ITsmConnection;

    return-object p1
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pboctransaction/samsung/a;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/pboctransaction/samsung/a;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/a;->b:Lcom/unionpay/mobile/android/pboctransaction/b;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/a;->b:Lcom/unionpay/mobile/android/pboctransaction/b;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/pboctransaction/b;->a()V

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/a;->b:Lcom/unionpay/mobile/android/pboctransaction/b;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/pboctransaction/b;->b()V

    goto :goto_b
.end method


# virtual methods
.method public final a(Lcom/unionpay/mobile/android/pboctransaction/d;)Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unionpay/mobile/android/pboctransaction/d;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unionpay/mobile/android/model/c;",
            ">;"
        }
    .end annotation

    const/16 v11, 0x10

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/a;->c:Lcom/unionpay/client3/tsm/ITsmConnection;

    if-eqz v1, :cond_60

    :try_start_9
    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/a;->c:Lcom/unionpay/client3/tsm/ITsmConnection;

    iget v2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/a;->d:I

    invoke-interface {v1, v2}, Lcom/unionpay/client3/tsm/ITsmConnection;->getSeApps(I)[Lcom/unionpay/client3/tsm/SeAppInfo;

    move-result-object v10

    if-eqz v10, :cond_60

    array-length v1, v10

    if-lez v1, :cond_60

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1b} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1b} :catch_61

    move v9, v7

    :goto_1c
    :try_start_1c
    array-length v0, v10

    if-ge v9, v0, :cond_70

    aget-object v0, v10, v9

    invoke-virtual {v0}, Lcom/unionpay/client3/tsm/SeAppInfo;->getAppAid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v11, :cond_6e

    const/16 v1, 0xe

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "06"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6e

    move v0, v7

    :goto_3e
    if-nez v0, :cond_58

    new-instance v0, Lcom/unionpay/mobile/android/model/a;

    const/4 v1, 0x1

    aget-object v2, v10, v9

    invoke-virtual {v2}, Lcom/unionpay/client3/tsm/SeAppInfo;->getAppAid()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    aget-object v4, v10, v9

    invoke-virtual {v4}, Lcom/unionpay/client3/tsm/SeAppInfo;->getPan()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/unionpay/mobile/android/model/a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_58} :catch_6a
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_58} :catch_66

    :cond_58
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1c

    :catch_5c
    move-exception v1

    :goto_5d
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_60
    :goto_60
    return-object v0

    :catch_61
    move-exception v1

    :goto_62
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_60

    :catch_66
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    goto :goto_62

    :catch_6a
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    goto :goto_5d

    :cond_6e
    move v0, v8

    goto :goto_3e

    :cond_70
    move-object v0, v6

    goto :goto_60
.end method

.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(Lcom/unionpay/mobile/android/pboctransaction/b;Landroid/content/Context;)V
    .registers 6

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/a;->b:Lcom/unionpay/mobile/android/pboctransaction/b;

    iput-object p2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/a;->a:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.unionpay.client3.action.TSM_MODEL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.unionpay"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v1, Lcom/unionpay/mobile/android/pboctransaction/samsung/b;

    invoke-direct {v1, p0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/b;-><init>(Lcom/unionpay/mobile/android/pboctransaction/samsung/a;)V

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "plugin-clientV3"

    const-string v1, "startSamsungService() failed!!!"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/a;->a(Z)V

    :cond_2d
    return-void
.end method

.method public final a([BI)[B
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/a;->c:Lcom/unionpay/client3/tsm/ITsmConnection;

    if-eqz v1, :cond_41

    :try_start_5
    const-string v1, "plugin-clientV3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/a;->c:Lcom/unionpay/client3/tsm/ITsmConnection;

    iget v2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/a;->d:I

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, p2}, Lcom/unionpay/client3/tsm/ITsmConnection;->sendApdu(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "plugin-clientV3"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<---"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_40} :catch_42

    move-result-object v0

    :cond_41
    :goto_41
    return-object v0

    :catch_42
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_41
.end method

.method public final b()V
    .registers 1

    return-void
.end method

.method public final c()V
    .registers 1

    return-void
.end method

.method public final d()V
    .registers 1

    return-void
.end method
