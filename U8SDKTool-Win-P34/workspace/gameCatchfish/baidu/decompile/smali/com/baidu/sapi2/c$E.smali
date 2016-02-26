.class Lcom/baidu/sapi2/c$E;
.super Ljava/lang/Object;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/sapi2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "E"
.end annotation


# static fields
.field static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static c:I


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/sapi2/c$E;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/baidu/sapi2/c$E;->a:Landroid/content/Context;

    .line 151
    invoke-virtual {p0}, Lcom/baidu/sapi2/c$E;->d()V

    .line 152
    invoke-direct {p0}, Lcom/baidu/sapi2/c$E;->e()V

    .line 153
    return-void
.end method

.method private e()V
    .registers 3

    .prologue
    .line 142
    sget-object v0, Lcom/baidu/sapi2/c$E;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 143
    sget-object v0, Lcom/baidu/sapi2/c$E;->b:Ljava/util/List;

    const-string v1, "http://119.75.220.29"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lcom/baidu/sapi2/c$E;->b:Ljava/util/List;

    const-string v1, "http://220.181.111.48"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v0, Lcom/baidu/sapi2/c$E;->b:Ljava/util/List;

    const-string v1, "http://123.125.115.81"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 4

    .prologue
    .line 156
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiAccountManager;->getSapiConfiguration()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->environment:Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/Domain;->getURL()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "domain":Ljava/lang/String;
    sget v1, Lcom/baidu/sapi2/c$E;->c:I

    if-lez v1, :cond_2b

    .line 158
    sget v1, Lcom/baidu/sapi2/c$E;->c:I

    sget-object v2, Lcom/baidu/sapi2/c$E;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_1f

    .line 159
    const/4 v1, 0x1

    sput v1, Lcom/baidu/sapi2/c$E;->c:I

    .line 161
    :cond_1f
    sget-object v1, Lcom/baidu/sapi2/c$E;->b:Ljava/util/List;

    sget v2, Lcom/baidu/sapi2/c$E;->c:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "domain":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 163
    .restart local v0    # "domain":Ljava/lang/String;
    :cond_2b
    return-object v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 167
    sget v0, Lcom/baidu/sapi2/c$E;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/baidu/sapi2/c$E;->c:I

    .line 168
    return-void
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 171
    sget v0, Lcom/baidu/sapi2/c$E;->c:I

    sget-object v1, Lcom/baidu/sapi2/c$E;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public d()V
    .registers 2

    .prologue
    .line 175
    const/4 v0, 0x0

    sput v0, Lcom/baidu/sapi2/c$E;->c:I

    .line 176
    return-void
.end method
