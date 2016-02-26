.class public final Lcom/tencent/map/b/b$b;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/map/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/map/b/b;


# direct methods
.method public constructor <init>(Lcom/tencent/map/b/b;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/map/b/b$b;->a:Lcom/tencent/map/b/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    const-wide v6, 0x4076800000000000L

    const/4 v1, 0x0

    :try_start_6
    iget-object v0, p0, Lcom/tencent/map/b/b$b;->a:Lcom/tencent/map/b/b;

    iget-object v0, v0, Lcom/tencent/map/b/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/map/b/j;->a([B)[B

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/map/b/b$b;->a:Lcom/tencent/map/b/b;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/tencent/map/b/b;->a(Lcom/tencent/map/b/b;Z)Z

    const-string v2, "http://ls.map.soso.com/deflect?c=1"

    const-string v3, "SOSO MAP LBS SDK"

    invoke-static {v2, v3, v0}, Lcom/tencent/map/b/b;->a(Ljava/lang/String;Ljava/lang/String;[B)Lcom/tencent/map/b/n;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/map/b/b$b;->a:Lcom/tencent/map/b/b;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/tencent/map/b/b;->a(Lcom/tencent/map/b/b;Z)Z

    iget-object v2, v0, Lcom/tencent/map/b/n;->a:[B

    invoke-static {v2}, Lcom/tencent/map/b/j;->b([B)[B

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/map/b/b$b;->a:Lcom/tencent/map/b/b;

    iget-object v0, v0, Lcom/tencent/map/b/n;->b:Ljava/lang/String;

    invoke-static {v3, v2, v0}, Lcom/tencent/map/b/b;->a(Lcom/tencent/map/b/b;[BLjava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_33} :catch_34

    :cond_33
    :goto_33
    return-void

    :catch_34
    move-exception v0

    move v0, v1

    :goto_36
    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x3

    if-gt v0, v2, :cond_6a

    const-wide/16 v2, 0x7d0

    :try_start_3d
    invoke-static {v2, v3}, Lcom/tencent/map/b/b$b;->sleep(J)V

    iget-object v2, p0, Lcom/tencent/map/b/b$b;->a:Lcom/tencent/map/b/b;

    iget-object v2, v2, Lcom/tencent/map/b/b;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/map/b/j;->a([B)[B

    move-result-object v2

    const-string v3, "http://ls.map.soso.com/deflect?c=1"

    const-string v4, "SOSO MAP LBS SDK"

    invoke-static {v3, v4, v2}, Lcom/tencent/map/b/b;->a(Ljava/lang/String;Ljava/lang/String;[B)Lcom/tencent/map/b/n;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/map/b/b$b;->a:Lcom/tencent/map/b/b;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/tencent/map/b/b;->a(Lcom/tencent/map/b/b;Z)Z

    iget-object v3, v2, Lcom/tencent/map/b/n;->a:[B

    invoke-static {v3}, Lcom/tencent/map/b/j;->b([B)[B

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/map/b/b$b;->a:Lcom/tencent/map/b/b;

    iget-object v2, v2, Lcom/tencent/map/b/n;->b:Ljava/lang/String;

    invoke-static {v4, v3, v2}, Lcom/tencent/map/b/b;->a(Lcom/tencent/map/b/b;[BLjava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_67} :catch_68

    goto :goto_33

    :catch_68
    move-exception v2

    goto :goto_36

    :cond_6a
    iget-object v0, p0, Lcom/tencent/map/b/b$b;->a:Lcom/tencent/map/b/b;

    invoke-static {v0, v1}, Lcom/tencent/map/b/b;->a(Lcom/tencent/map/b/b;Z)Z

    iget-object v0, p0, Lcom/tencent/map/b/b$b;->a:Lcom/tencent/map/b/b;

    invoke-static {v0}, Lcom/tencent/map/b/b;->a(Lcom/tencent/map/b/b;)Lcom/tencent/map/b/b$a;

    move-result-object v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/tencent/map/b/b$b;->a:Lcom/tencent/map/b/b;

    invoke-static {v0}, Lcom/tencent/map/b/b;->a(Lcom/tencent/map/b/b;)Lcom/tencent/map/b/b$a;

    move-result-object v0

    invoke-interface {v0, v6, v7, v6, v7}, Lcom/tencent/map/b/b$a;->a(DD)V

    goto :goto_33
.end method
