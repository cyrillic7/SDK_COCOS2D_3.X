.class public final Lcom/duoku/platform/view/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/view/d$a;
    }
.end annotation


# direct methods
.method public static a()V
    .registers 0

    .prologue
    .line 44
    invoke-static {}, Lcom/duoku/platform/view/d;->b()V

    .line 45
    invoke-static {}, Lcom/duoku/platform/view/d;->c()V

    .line 46
    invoke-static {}, Lcom/duoku/platform/view/d;->d()V

    .line 47
    return-void
.end method

.method public static b()V
    .registers 5

    .prologue
    .line 56
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/f/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {}, Lcom/duoku/platform/g/g;->a()Lcom/duoku/platform/g/e;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/util/Constants;->DK_GET_LOGO_URL:Ljava/lang/String;

    const/16 v3, 0x2b

    new-instance v4, Lcom/duoku/platform/view/d$1;

    invoke-direct {v4}, Lcom/duoku/platform/view/d$1;-><init>()V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/duoku/platform/g/e;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/g/f;)I

    .line 127
    return-void
.end method

.method public static c()V
    .registers 5

    .prologue
    .line 135
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/f/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {}, Lcom/duoku/platform/g/g;->a()Lcom/duoku/platform/g/e;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/util/Constants;->DK_GET_AD_URL:Ljava/lang/String;

    const/16 v3, 0x2c

    new-instance v4, Lcom/duoku/platform/view/d$2;

    invoke-direct {v4}, Lcom/duoku/platform/view/d$2;-><init>()V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/duoku/platform/g/e;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/g/f;)I

    .line 172
    return-void
.end method

.method public static d()V
    .registers 0

    .prologue
    .line 180
    return-void
.end method
