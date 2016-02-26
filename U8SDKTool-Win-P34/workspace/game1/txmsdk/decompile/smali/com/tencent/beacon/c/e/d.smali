.class public final Lcom/tencent/beacon/c/e/d;
.super Lcom/tencent/beacon/f/c;
.source "ProGuard"


# static fields
.field private static h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Lcom/tencent/beacon/c/e/e;

.field private static k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:B

.field public b:B

.field public c:Ljava/lang/String;

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/tencent/beacon/c/e/e;

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Lcom/tencent/beacon/f/c;-><init>()V

    .line 11
    iput-byte v0, p0, Lcom/tencent/beacon/c/e/d;->a:B

    .line 13
    iput-byte v0, p0, Lcom/tencent/beacon/c/e/d;->b:B

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/c/e/d;->c:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/tencent/beacon/c/e/d;->d:Ljava/util/Map;

    .line 19
    iput-object v1, p0, Lcom/tencent/beacon/c/e/d;->e:Ljava/util/ArrayList;

    .line 21
    iput-object v1, p0, Lcom/tencent/beacon/c/e/d;->f:Lcom/tencent/beacon/c/e/e;

    .line 23
    iput-object v1, p0, Lcom/tencent/beacon/c/e/d;->g:Ljava/util/ArrayList;

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/beacon/f/a;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 67
    iget-byte v0, p0, Lcom/tencent/beacon/c/e/d;->a:B

    invoke-virtual {p1, v0, v4, v3}, Lcom/tencent/beacon/f/a;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/beacon/c/e/d;->a:B

    .line 68
    iget-byte v0, p0, Lcom/tencent/beacon/c/e/d;->b:B

    invoke-virtual {p1, v0, v3, v3}, Lcom/tencent/beacon/f/a;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/beacon/c/e/d;->b:B

    .line 69
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/tencent/beacon/f/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/c/e/d;->c:Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/tencent/beacon/c/e/d;->h:Ljava/util/Map;

    if-nez v0, :cond_2d

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/beacon/c/e/d;->h:Ljava/util/Map;

    .line 73
    const-string v0, ""

    .line 74
    const-string v1, ""

    .line 75
    sget-object v2, Lcom/tencent/beacon/c/e/d;->h:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_2d
    sget-object v0, Lcom/tencent/beacon/c/e/d;->h:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/tencent/beacon/f/a;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/beacon/c/e/d;->d:Ljava/util/Map;

    .line 78
    sget-object v0, Lcom/tencent/beacon/c/e/d;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_4a

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/beacon/c/e/d;->i:Ljava/util/ArrayList;

    .line 81
    const-string v0, ""

    .line 82
    sget-object v1, Lcom/tencent/beacon/c/e/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_4a
    sget-object v0, Lcom/tencent/beacon/c/e/d;->i:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v4}, Lcom/tencent/beacon/f/a;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/beacon/c/e/d;->e:Ljava/util/ArrayList;

    .line 85
    sget-object v0, Lcom/tencent/beacon/c/e/d;->j:Lcom/tencent/beacon/c/e/e;

    if-nez v0, :cond_60

    .line 87
    new-instance v0, Lcom/tencent/beacon/c/e/e;

    invoke-direct {v0}, Lcom/tencent/beacon/c/e/e;-><init>()V

    sput-object v0, Lcom/tencent/beacon/c/e/d;->j:Lcom/tencent/beacon/c/e/e;

    .line 89
    :cond_60
    sget-object v0, Lcom/tencent/beacon/c/e/d;->j:Lcom/tencent/beacon/c/e/e;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v4}, Lcom/tencent/beacon/f/a;->a(Lcom/tencent/beacon/f/c;IZ)Lcom/tencent/beacon/f/c;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/c/e/e;

    iput-object v0, p0, Lcom/tencent/beacon/c/e/d;->f:Lcom/tencent/beacon/c/e/e;

    .line 90
    sget-object v0, Lcom/tencent/beacon/c/e/d;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_7d

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/beacon/c/e/d;->k:Ljava/util/ArrayList;

    .line 93
    const-string v0, ""

    .line 94
    sget-object v1, Lcom/tencent/beacon/c/e/d;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_7d
    sget-object v0, Lcom/tencent/beacon/c/e/d;->k:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v4}, Lcom/tencent/beacon/f/a;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/beacon/c/e/d;->g:Ljava/util/ArrayList;

    .line 97
    return-void
.end method

.method public final a(Lcom/tencent/beacon/f/b;)V
    .registers 4

    .prologue
    .line 42
    iget-byte v0, p0, Lcom/tencent/beacon/c/e/d;->a:B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/f/b;->a(BI)V

    .line 43
    iget-byte v0, p0, Lcom/tencent/beacon/c/e/d;->b:B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/f/b;->a(BI)V

    .line 44
    iget-object v0, p0, Lcom/tencent/beacon/c/e/d;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/f/b;->a(Ljava/lang/String;I)V

    .line 45
    iget-object v0, p0, Lcom/tencent/beacon/c/e/d;->d:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/f/b;->a(Ljava/util/Map;I)V

    .line 46
    iget-object v0, p0, Lcom/tencent/beacon/c/e/d;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_22

    .line 48
    iget-object v0, p0, Lcom/tencent/beacon/c/e/d;->e:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/f/b;->a(Ljava/util/Collection;I)V

    .line 50
    :cond_22
    iget-object v0, p0, Lcom/tencent/beacon/c/e/d;->f:Lcom/tencent/beacon/c/e/e;

    if-eqz v0, :cond_2c

    .line 52
    iget-object v0, p0, Lcom/tencent/beacon/c/e/d;->f:Lcom/tencent/beacon/c/e/e;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/f/b;->a(Lcom/tencent/beacon/f/c;I)V

    .line 54
    :cond_2c
    iget-object v0, p0, Lcom/tencent/beacon/c/e/d;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_36

    .line 56
    iget-object v0, p0, Lcom/tencent/beacon/c/e/d;->g:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/f/b;->a(Ljava/util/Collection;I)V

    .line 58
    :cond_36
    return-void
.end method
