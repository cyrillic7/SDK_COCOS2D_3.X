.class public final Lcom/tencent/map/b/g$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/map/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private synthetic d:Lcom/tencent/map/b/g;


# direct methods
.method public constructor <init>(Lcom/tencent/map/b/g;)V
    .registers 3

    iput-object p1, p0, Lcom/tencent/map/b/g$a;->d:Lcom/tencent/map/b/g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/tencent/map/b/g$a;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/map/b/g$a;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/map/b/g$a;->c:Z

    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/tencent/map/b/g$a;->c:Z

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/tencent/map/b/g$a;->b:Ljava/util/List;

    if-nez v0, :cond_12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/map/b/g$a;->b:Ljava/util/List;

    :cond_12
    iget-object v0, p0, Lcom/tencent/map/b/g$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    const/4 v1, 0x0

    move v2, v1

    :goto_2a
    if-ge v2, v3, :cond_43

    iget-object v1, p0, Lcom/tencent/map/b/g$a;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    iget-object v1, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v5, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/tencent/map/b/g$a;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_43
    iget-object v1, p0, Lcom/tencent/map/b/g$a;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_49
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2a

    :cond_4d
    iget-object v0, p0, Lcom/tencent/map/b/g$a;->b:Ljava/util/List;

    if-nez v0, :cond_6e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/map/b/g$a;->b:Ljava/util/List;

    :goto_58
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v2, p0, Lcom/tencent/map/b/g$a;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    :cond_6e
    iget-object v0, p0, Lcom/tencent/map/b/g$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_58
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    const/4 v3, 0x4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "wifi_state"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/map/b/g$a;->a:I

    iget-object v0, p0, Lcom/tencent/map/b/g$a;->d:Lcom/tencent/map/b/g;

    invoke-static {v0}, Lcom/tencent/map/b/g;->b(Lcom/tencent/map/b/g;)Lcom/tencent/map/b/g$c;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/tencent/map/b/g$a;->d:Lcom/tencent/map/b/g;

    invoke-static {v0}, Lcom/tencent/map/b/g;->b(Lcom/tencent/map/b/g;)Lcom/tencent/map/b/g$c;

    move-result-object v0

    iget v1, p0, Lcom/tencent/map/b/g$a;->a:I

    invoke-interface {v0, v1}, Lcom/tencent/map/b/g$c;->b(I)V

    :cond_28
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    :cond_40
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/map/b/g$a;->d:Lcom/tencent/map/b/g;

    invoke-static {v1}, Lcom/tencent/map/b/g;->c(Lcom/tencent/map/b/g;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    if-eqz v1, :cond_53

    iget-object v0, p0, Lcom/tencent/map/b/g$a;->d:Lcom/tencent/map/b/g;

    invoke-static {v0}, Lcom/tencent/map/b/g;->c(Lcom/tencent/map/b/g;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    :cond_53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    if-eqz v0, :cond_69

    if-eqz v0, :cond_6a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_6a

    :cond_69
    :goto_69
    return-void

    :cond_6a
    iget-boolean v1, p0, Lcom/tencent/map/b/g$a;->c:Z

    if-nez v1, :cond_91

    iget-object v1, p0, Lcom/tencent/map/b/g$a;->b:Ljava/util/List;

    if-eqz v1, :cond_91

    iget-object v1, p0, Lcom/tencent/map/b/g$a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v3, :cond_91

    if-eqz v0, :cond_91

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_91

    invoke-direct {p0, v0}, Lcom/tencent/map/b/g$a;->a(Ljava/util/List;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/map/b/g$a;->c:Z

    iget-object v0, p0, Lcom/tencent/map/b/g$a;->d:Lcom/tencent/map/b/g;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/tencent/map/b/g;->a(J)V

    goto :goto_69

    :cond_91
    invoke-direct {p0, v0}, Lcom/tencent/map/b/g$a;->a(Ljava/util/List;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/map/b/g$a;->c:Z

    iget-object v0, p0, Lcom/tencent/map/b/g$a;->d:Lcom/tencent/map/b/g;

    new-instance v1, Lcom/tencent/map/b/g$b;

    iget-object v2, p0, Lcom/tencent/map/b/g$a;->d:Lcom/tencent/map/b/g;

    iget-object v3, p0, Lcom/tencent/map/b/g$a;->b:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget v6, p0, Lcom/tencent/map/b/g$a;->a:I

    invoke-direct/range {v1 .. v6}, Lcom/tencent/map/b/g$b;-><init>(Lcom/tencent/map/b/g;Ljava/util/List;JI)V

    invoke-static {v0, v1}, Lcom/tencent/map/b/g;->a(Lcom/tencent/map/b/g;Lcom/tencent/map/b/g$b;)Lcom/tencent/map/b/g$b;

    iget-object v0, p0, Lcom/tencent/map/b/g$a;->d:Lcom/tencent/map/b/g;

    invoke-static {v0}, Lcom/tencent/map/b/g;->b(Lcom/tencent/map/b/g;)Lcom/tencent/map/b/g$c;

    move-result-object v0

    if-eqz v0, :cond_c2

    iget-object v0, p0, Lcom/tencent/map/b/g$a;->d:Lcom/tencent/map/b/g;

    invoke-static {v0}, Lcom/tencent/map/b/g;->b(Lcom/tencent/map/b/g;)Lcom/tencent/map/b/g$c;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/map/b/g$a;->d:Lcom/tencent/map/b/g;

    invoke-static {v1}, Lcom/tencent/map/b/g;->d(Lcom/tencent/map/b/g;)Lcom/tencent/map/b/g$b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/map/b/g$c;->a(Lcom/tencent/map/b/g$b;)V

    :cond_c2
    iget-object v0, p0, Lcom/tencent/map/b/g$a;->d:Lcom/tencent/map/b/g;

    iget-object v1, p0, Lcom/tencent/map/b/g$a;->d:Lcom/tencent/map/b/g;

    invoke-static {v1}, Lcom/tencent/map/b/g;->e(Lcom/tencent/map/b/g;)I

    move-result v1

    int-to-long v2, v1

    const-wide/16 v4, 0x4e20

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/tencent/map/b/g;->a(J)V

    goto :goto_69
.end method
