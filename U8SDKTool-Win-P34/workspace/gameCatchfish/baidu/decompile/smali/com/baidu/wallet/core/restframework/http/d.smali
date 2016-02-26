.class final Lcom/baidu/wallet/core/restframework/http/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/wallet/core/restframework/http/j;Lcom/baidu/wallet/core/restframework/http/j;)I
    .registers 11

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-virtual {p1}, Lcom/baidu/wallet/core/restframework/http/j;->f()D

    move-result-wide v4

    invoke-virtual {p2}, Lcom/baidu/wallet/core/restframework/http/j;->f()D

    move-result-wide v6

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_13

    move v0, v3

    :cond_12
    :goto_12
    return v0

    :cond_13
    invoke-virtual {p1}, Lcom/baidu/wallet/core/restframework/http/j;->b()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {p2}, Lcom/baidu/wallet/core/restframework/http/j;->b()Z

    move-result v3

    if-nez v3, :cond_21

    move v0, v2

    goto :goto_12

    :cond_21
    invoke-virtual {p2}, Lcom/baidu/wallet/core/restframework/http/j;->b()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-virtual {p1}, Lcom/baidu/wallet/core/restframework/http/j;->b()Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_2d
    invoke-virtual {p1}, Lcom/baidu/wallet/core/restframework/http/j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/baidu/wallet/core/restframework/http/j;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    move v0, v1

    goto :goto_12

    :cond_3d
    invoke-virtual {p1}, Lcom/baidu/wallet/core/restframework/http/j;->d()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-virtual {p2}, Lcom/baidu/wallet/core/restframework/http/j;->d()Z

    move-result v3

    if-nez v3, :cond_4b

    move v0, v2

    goto :goto_12

    :cond_4b
    invoke-virtual {p2}, Lcom/baidu/wallet/core/restframework/http/j;->d()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-virtual {p1}, Lcom/baidu/wallet/core/restframework/http/j;->d()Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_57
    invoke-virtual {p1}, Lcom/baidu/wallet/core/restframework/http/j;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/baidu/wallet/core/restframework/http/j;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_67

    move v0, v1

    goto :goto_12

    :cond_67
    invoke-static {p1}, Lcom/baidu/wallet/core/restframework/http/j;->c(Lcom/baidu/wallet/core/restframework/http/j;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {p2}, Lcom/baidu/wallet/core/restframework/http/j;->c(Lcom/baidu/wallet/core/restframework/http/j;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-lt v4, v3, :cond_12

    if-ne v4, v3, :cond_7d

    move v0, v1

    goto :goto_12

    :cond_7d
    move v0, v2

    goto :goto_12
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/baidu/wallet/core/restframework/http/j;

    check-cast p2, Lcom/baidu/wallet/core/restframework/http/j;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/wallet/core/restframework/http/d;->a(Lcom/baidu/wallet/core/restframework/http/j;Lcom/baidu/wallet/core/restframework/http/j;)I

    move-result v0

    return v0
.end method
