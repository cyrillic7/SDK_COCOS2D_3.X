.class public Lcom/baidu/wallet/core/restframework/http/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/baidu/wallet/core/restframework/http/i;

.field private final b:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/baidu/wallet/core/restframework/http/a;-><init>(Ljava/lang/Object;Lcom/baidu/wallet/core/utils/support/MultiValueMap;)V

    return-void
.end method

.method public constructor <init>(Lcom/baidu/wallet/core/utils/support/MultiValueMap;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/baidu/wallet/core/restframework/http/a;-><init>(Ljava/lang/Object;Lcom/baidu/wallet/core/utils/support/MultiValueMap;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/baidu/wallet/core/utils/support/MultiValueMap;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/wallet/core/restframework/http/a;->b:Ljava/lang/Object;

    new-instance v0, Lcom/baidu/wallet/core/restframework/http/i;

    invoke-direct {v0}, Lcom/baidu/wallet/core/restframework/http/i;-><init>()V

    if-eqz p2, :cond_f

    invoke-virtual {v0, p2}, Lcom/baidu/wallet/core/restframework/http/i;->putAll(Ljava/util/Map;)V

    :cond_f
    invoke-static {v0}, Lcom/baidu/wallet/core/restframework/http/i;->a(Lcom/baidu/wallet/core/restframework/http/i;)Lcom/baidu/wallet/core/restframework/http/i;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/core/restframework/http/a;->a:Lcom/baidu/wallet/core/restframework/http/i;

    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/wallet/core/restframework/http/i;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/http/a;->a:Lcom/baidu/wallet/core/restframework/http/i;

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/http/a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/wallet/core/restframework/http/a;->b:Ljava/lang/Object;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/baidu/wallet/core/restframework/http/a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/wallet/core/restframework/http/a;->a:Lcom/baidu/wallet/core/restframework/http/i;

    if-eqz v1, :cond_19

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_19
    iget-object v1, p0, Lcom/baidu/wallet/core/restframework/http/a;->a:Lcom/baidu/wallet/core/restframework/http/i;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/baidu/wallet/core/restframework/http/a;->a:Lcom/baidu/wallet/core/restframework/http/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_22
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
