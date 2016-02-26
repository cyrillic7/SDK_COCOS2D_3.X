.class public Lcom/duoku/platform/g/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/g/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/g/d$a;
    }
.end annotation


# instance fields
.field private a:Lcom/duoku/platform/util/k;

.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/duoku/platform/g/a;",
            "Lcom/duoku/platform/g/f;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-class v0, Lcom/duoku/platform/g/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/util/k;->a(Ljava/lang/String;)Lcom/duoku/platform/util/k;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/g/d;->a:Lcom/duoku/platform/util/k;

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/duoku/platform/g/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    new-instance v0, Lcom/duoku/platform/g/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/duoku/platform/g/d$a;-><init>(Lcom/duoku/platform/g/d;Lcom/duoku/platform/g/d$a;)V

    iput-object v0, p0, Lcom/duoku/platform/g/d;->c:Landroid/os/Handler;

    .line 35
    return-void
.end method

.method private a(I)Ljava/util/Map$Entry;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/duoku/platform/g/a;",
            "Lcom/duoku/platform/g/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    const/4 v2, 0x0

    .line 180
    iget-object v0, p0, Lcom/duoku/platform/g/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 182
    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_13

    move-object v0, v2

    .line 197
    :goto_12
    return-object v0

    .line 184
    :cond_13
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 186
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/g/a;

    .line 189
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne p1, v1, :cond_b

    goto :goto_12
.end method

.method static synthetic a(Lcom/duoku/platform/g/d;I)Ljava/util/Map$Entry;
    .registers 3

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/duoku/platform/g/d;->a(I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/duoku/platform/g/a;)V
    .registers 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/duoku/platform/g/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 167
    if-eqz v0, :cond_d

    .line 169
    iget-object v0, p0, Lcom/duoku/platform/g/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_d
    return-void
.end method

.method private a(Lcom/duoku/platform/g/a;Lcom/duoku/platform/g/f;)V
    .registers 4

    .prologue
    .line 148
    if-eqz p2, :cond_7

    .line 150
    iget-object v0, p0, Lcom/duoku/platform/g/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_7
    invoke-static {p1}, Lcom/duoku/platform/g/c;->a(Ljava/lang/Runnable;)V

    .line 155
    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/g/d;Lcom/duoku/platform/g/a;)V
    .registers 2

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/duoku/platform/g/d;->a(Lcom/duoku/platform/g/a;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/g/f;)I
    .registers 8

    .prologue
    .line 61
    iget-object v0, p0, Lcom/duoku/platform/g/d;->a:Lcom/duoku/platform/util/k;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestUrl == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/k;->b(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/duoku/platform/g/d;->a:Lcom/duoku/platform/util/k;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestBody == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/k;->b(Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcom/duoku/platform/g/a;

    invoke-direct {v0}, Lcom/duoku/platform/g/a;-><init>()V

    .line 64
    invoke-virtual {v0, p1}, Lcom/duoku/platform/g/a;->b(Ljava/lang/String;)V

    .line 66
    new-instance v1, Lcom/duoku/platform/util/a;

    invoke-direct {v1}, Lcom/duoku/platform/util/a;-><init>()V

    .line 67
    invoke-virtual {v1, p3}, Lcom/duoku/platform/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Lcom/duoku/platform/g/a;->a(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, p2}, Lcom/duoku/platform/g/a;->a(I)V

    .line 70
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/duoku/platform/g/a;->b(I)V

    .line 71
    iget-object v1, p0, Lcom/duoku/platform/g/d;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/g/a;->a(Landroid/os/Handler;)V

    .line 74
    invoke-direct {p0, v0, p4}, Lcom/duoku/platform/g/d;->a(Lcom/duoku/platform/g/a;Lcom/duoku/platform/g/f;)V

    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
