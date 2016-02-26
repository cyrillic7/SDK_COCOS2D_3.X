.class public Lcom/baidu/wallet/core/restframework/http/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final a:Lcom/baidu/wallet/core/restframework/http/j;

.field public static final b:Lcom/baidu/wallet/core/restframework/http/j;

.field public static final c:Lcom/baidu/wallet/core/restframework/http/j;

.field public static final d:Lcom/baidu/wallet/core/restframework/http/j;

.field public static final e:Lcom/baidu/wallet/core/restframework/http/j;

.field public static final f:Lcom/baidu/wallet/core/restframework/http/j;

.field public static final g:Lcom/baidu/wallet/core/restframework/http/j;

.field public static final h:Lcom/baidu/wallet/core/restframework/http/j;

.field public static final i:Lcom/baidu/wallet/core/restframework/http/j;

.field public static final j:Lcom/baidu/wallet/core/restframework/http/j;

.field public static final k:Lcom/baidu/wallet/core/restframework/http/j;

.field public static final l:Lcom/baidu/wallet/core/restframework/http/j;

.field public static final m:Lcom/baidu/wallet/core/restframework/http/j;

.field public static final n:Lcom/baidu/wallet/core/restframework/http/j;

.field public static final o:Lcom/baidu/wallet/core/restframework/http/j;

.field public static final p:Lcom/baidu/wallet/core/restframework/http/j;

.field public static final q:Ljava/util/Comparator;

.field public static final r:Ljava/util/Comparator;

.field private static final s:Ljava/util/BitSet;


# instance fields
.field private final t:Ljava/lang/String;

.field private final u:Ljava/lang/String;

.field private final v:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v1, 0x0

    const/16 v4, 0x80

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v4}, Ljava/util/BitSet;-><init>(I)V

    move v0, v1

    :goto_9
    const/16 v3, 0x1f

    if-gt v0, v3, :cond_13

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_13
    const/16 v0, 0x7f

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v4}, Ljava/util/BitSet;-><init>(I)V

    const/16 v3, 0x28

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/16 v3, 0x3c

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/16 v3, 0x3e

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/16 v3, 0x40

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/16 v3, 0x3b

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/16 v3, 0x5c

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/16 v3, 0x22

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/16 v3, 0x3f

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/16 v3, 0x7b

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/16 v3, 0x7d

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v3, Lcom/baidu/wallet/core/restframework/http/j;->s:Ljava/util/BitSet;

    sget-object v3, Lcom/baidu/wallet/core/restframework/http/j;->s:Ljava/util/BitSet;

    invoke-virtual {v3, v1, v4}, Ljava/util/BitSet;->set(II)V

    sget-object v1, Lcom/baidu/wallet/core/restframework/http/j;->s:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    sget-object v1, Lcom/baidu/wallet/core/restframework/http/j;->s:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    const-string v0, "*/*"

    invoke-static {v0}, Lcom/baidu/wallet/core/restframework/http/j;->b(Ljava/lang/String;)Lcom/baidu/wallet/core/restframework/http/j;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/core/restframework/http/j;->a:Lcom/baidu/wallet/core/restframework/http/j;

    const-string v0, "application/atom+xml"

    invoke-static {v0}, Lcom/baidu/wallet/core/restframework/http/j;->b(Ljava/lang/String;)Lcom/baidu/wallet/core/restframework/http/j;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/core/restframework/http/j;->b:Lcom/baidu/wallet/core/restframework/http/j;

    const-string v0, "application/rss+xml"

    invoke-static {v0}, Lcom/baidu/wallet/core/restframework/http/j;->b(Ljava/lang/String;)Lcom/baidu/wallet/core/restframework/http/j;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/core/restframework/http/j;->c:Lcom/baidu/wallet/core/restframework/http/j;

    const-string v0, "application/x-www-form-urlencoded"

    invoke-static {v0}, Lcom/baidu/wallet/core/restframework/http/j;->b(Ljava/lang/String;)Lcom/baidu/wallet/core/restframework/http/j;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/core/restframework/http/j;->d:Lcom/baidu/wallet/core/restframework/http/j;

    const-string v0, "application/json"

    invoke-static {v0}, Lcom/baidu/wallet/core/restframework/http/j;->b(Ljava/lang/String;)Lcom/baidu/wallet/core/restframework/http/j;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/core/restframework/http/j;->e:Lcom/baidu/wallet/core/restframework/http/j;

    const-string v0, "application/octet-stream"

    invoke-static {v0}, Lcom/baidu/wallet/core/restframework/http/j;->b(Ljava/lang/String;)Lcom/baidu/wallet/core/restframework/http/j;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/core/restframework/http/j;->f:Lcom/baidu/wallet/core/restframework/http/j;

    const-string v0, "application/xhtml+xml"

    invoke-static {v0}, Lcom/baidu/wallet/core/restframework/http/j;->b(Ljava/lang/String;)Lcom/baidu/wallet/core/restframework/http/j;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/core/restframework/http/j;->g:Lcom/baidu/wallet/core/restframework/http/j;

    const-string v0, "application/xml"

    invoke-static {v0}, Lcom/baidu/wallet/core/restframework/http/j;->b(Ljava/lang/String;)Lcom/baidu/wallet/core/restframework/http/j;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/core/restframework/http/j;->h:Lcom/baidu/wallet/core/restframework/http/j;

    const-string v0, "application/*+xml"

    invoke-static {v0}, Lcom/baidu/wallet/core/restframework/http/j;->b(Ljava/lang/String;)Lcom/baidu/wallet/core/restframework/http/j;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/core/restframework/http/j;->i:Lcom/baidu/wallet/core/restframework/http/j;

    const-string v0, "image/gif"

    invoke-static {v0}, Lcom/baidu/wallet/core/restframework/http/j;->b(Ljava/lang/String;)Lcom/baidu/wallet/core/restframework/http/j;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/core/restframework/http/j;->j:Lcom/baidu/wallet/core/restframework/http/j;

    const-string v0, "image/jpeg"

    invoke-static {v0}, Lcom/baidu/wallet/core/restframework/http/j;->b(Ljava/lang/String;)Lcom/baidu/wallet/core/restframework/http/j;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/core/restframework/http/j;->k:Lcom/baidu/wallet/core/restframework/http/j;

    const-string v0, "image/png"

    invoke-static {v0}, Lcom/baidu/wallet/core/restframework/http/j;->b(Ljava/lang/String;)Lcom/baidu/wallet/core/restframework/http/j;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/core/restframework/http/j;->l:Lcom/baidu/wallet/core/restframework/http/j;

    const-string v0, "multipart/form-data"

    invoke-static {v0}, Lcom/baidu/wallet/core/restframework/http/j;->b(Ljava/lang/String;)Lcom/baidu/wallet/core/restframework/http/j;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/core/restframework/http/j;->m:Lcom/baidu/wallet/core/restframework/http/j;

    const-string v0, "text/html"

    invoke-static {v0}, Lcom/baidu/wallet/core/restframework/http/j;->b(Ljava/lang/String;)Lcom/baidu/wallet/core/restframework/http/j;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/core/restframework/http/j;->n:Lcom/baidu/wallet/core/restframework/http/j;

    const-string v0, "text/plain"

    invoke-static {v0}, Lcom/baidu/wallet/core/restframework/http/j;->b(Ljava/lang/String;)Lcom/baidu/wallet/core/restframework/http/j;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/core/restframework/http/j;->o:Lcom/baidu/wallet/core/restframework/http/j;

    const-string v0, "text/xml"

    invoke-static {v0}, Lcom/baidu/wallet/core/restframework/http/j;->b(Ljava/lang/String;)Lcom/baidu/wallet/core/restframework/http/j;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/core/restframework/http/j;->p:Lcom/baidu/wallet/core/restframework/http/j;

    new-instance v0, Lcom/baidu/wallet/core/restframework/http/e;

    invoke-direct {v0}, Lcom/baidu/wallet/core/restframework/http/e;-><init>()V

    sput-object v0, Lcom/baidu/wallet/core/restframework/http/j;->q:Ljava/util/Comparator;

    new-instance v0, Lcom/baidu/wallet/core/restframework/http/d;

    invoke-direct {v0}, Lcom/baidu/wallet/core/restframework/http/d;-><init>()V

    sput-object v0, Lcom/baidu/wallet/core/restframework/http/j;->r:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/wallet/core/restframework/http/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\'type\' must not be empty"

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/Assert;->hasLength(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'subtype\' must not be empty"

    invoke-static {p2, v0}, Lcom/baidu/wallet/core/utils/Assert;->hasLength(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/baidu/wallet/core/restframework/http/j;->d(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/baidu/wallet/core/restframework/http/j;->d(Ljava/lang/String;)V

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/core/restframework/http/j;->t:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/core/restframework/http/j;->u:Ljava/lang/String;

    invoke-static {p3}, Lcom/baidu/wallet/core/utils/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_62

    new-instance v2, Lcom/baidu/wallet/core/utils/support/LinkedCaseInsensitiveMap;

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v0, v1}, Lcom/baidu/wallet/core/utils/support/LinkedCaseInsensitiveMap;-><init>(ILjava/util/Locale;)V

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/baidu/wallet/core/restframework/http/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c

    :cond_5b
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/core/restframework/http/j;->v:Ljava/util/Map;

    :goto_61
    return-void

    :cond_62
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/core/restframework/http/j;->v:Ljava/util/Map;

    goto :goto_61
.end method

.method public static a(Ljava/util/Collection;)Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/restframework/http/j;

    invoke-direct {v0, v1}, Lcom/baidu/wallet/core/restframework/http/j;->a(Ljava/lang/StringBuilder;)V

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const-string v0, "parameter attribute must not be empty"

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/Assert;->hasLength(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "parameter value must not be empty"

    invoke-static {p2, v0}, Lcom/baidu/wallet/core/utils/Assert;->hasLength(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/baidu/wallet/core/restframework/http/j;->d(Ljava/lang/String;)V

    const-string v0, "q"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-direct {p0, p2}, Lcom/baidu/wallet/core/restframework/http/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_19
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_47

    const-wide/high16 v4, 0x3ff0000000000000L

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_47

    const/4 v0, 0x1

    :goto_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid quality value \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\": should be between 0.0 and 1.0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/Assert;->isTrue(ZLjava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_46} :catch_49

    :cond_46
    :goto_46
    return-void

    :cond_47
    const/4 v0, 0x0

    goto :goto_2a

    :catch_49
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_46

    :cond_4e
    const-string v0, "charset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-direct {p0, p2}, Lcom/baidu/wallet/core/restframework/http/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    goto :goto_46

    :cond_5e
    invoke-direct {p0, p2}, Lcom/baidu/wallet/core/restframework/http/j;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_46

    invoke-direct {p0, p2}, Lcom/baidu/wallet/core/restframework/http/j;->d(Ljava/lang/String;)V

    goto :goto_46
.end method

.method private a(Ljava/lang/StringBuilder;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/http/j;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/http/j;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/http/j;->v:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/baidu/wallet/core/restframework/http/j;->a(Ljava/util/Map;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static a(Ljava/util/List;)V
    .registers 3

    const-string v0, "\'mediaTypes\' must not be null"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_11

    sget-object v0, Lcom/baidu/wallet/core/restframework/http/j;->q:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_11
    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/StringBuilder;)V
    .registers 6

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const/16 v1, 0x3b

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_31
    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/baidu/wallet/core/restframework/http/j;
    .registers 2

    invoke-static {p0}, Lcom/baidu/wallet/core/restframework/http/j;->c(Ljava/lang/String;)Lcom/baidu/wallet/core/restframework/http/j;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lcom/baidu/wallet/core/restframework/http/j;
    .registers 12

    const/4 v1, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    const-string v0, "\'mediaType\' must not be empty"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/Assert;->hasLength(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ";"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/StringUtils;->tokenizeToStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v3, v9

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string v0, "*/*"

    :cond_1e
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v10, :cond_45

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" does not contain \'/\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_6c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" does not contain subtype after \'/\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6c
    invoke-virtual {v0, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v0, "*"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    const-string v0, "*"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_92

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A wildcard type is legal only in \'*/*\' (all media types)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_92
    const/4 v0, 0x0

    array-length v2, v3

    if-le v2, v1, :cond_c1

    new-instance v2, Ljava/util/LinkedHashMap;

    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    move v0, v1

    :goto_9f
    array-length v1, v3

    if-ge v0, v1, :cond_c0

    aget-object v1, v3, v0

    const/16 v6, 0x3d

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v10, :cond_bd

    invoke-virtual {v1, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_bd
    add-int/lit8 v0, v0, 0x1

    goto :goto_9f

    :cond_c0
    move-object v0, v2

    :cond_c1
    new-instance v1, Lcom/baidu/wallet/core/restframework/http/j;

    invoke-direct {v1, v4, v5, v0}, Lcom/baidu/wallet/core/restframework/http/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v1
.end method

.method static synthetic c(Lcom/baidu/wallet/core/restframework/http/j;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/http/j;->v:Ljava/util/Map;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3f

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-object v2, Lcom/baidu/wallet/core/restframework/http/j;->s:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_3c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid token character \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' in token \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3f
    return-void
.end method

.method private e(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_18

    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    :cond_9
    :goto_9
    return-object p1

    :cond_a
    invoke-direct {p0, p1}, Lcom/baidu/wallet/core/restframework/http/j;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_9
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/http/j;->t:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/http/j;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/baidu/wallet/core/restframework/http/j;)Z
    .registers 8

    const/16 v5, 0x2b

    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/baidu/wallet/core/restframework/http/j;->b()Z

    move-result v2

    if-eqz v2, :cond_10

    move v0, v1

    goto :goto_7

    :cond_10
    iget-object v2, p0, Lcom/baidu/wallet/core/restframework/http/j;->t:Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/wallet/core/restframework/http/j;->t:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/baidu/wallet/core/restframework/http/j;->u:Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/wallet/core/restframework/http/j;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-virtual {p0}, Lcom/baidu/wallet/core/restframework/http/j;->d()Z

    move-result v2

    if-eqz v2, :cond_2c

    :cond_2a
    move v0, v1

    goto :goto_7

    :cond_2c
    iget-object v2, p0, Lcom/baidu/wallet/core/restframework/http/j;->u:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    iget-object v3, p1, Lcom/baidu/wallet/core/restframework/http/j;->u:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v2, v4, :cond_7

    if-eq v3, v4, :cond_7

    iget-object v4, p0, Lcom/baidu/wallet/core/restframework/http/j;->u:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/wallet/core/restframework/http/j;->u:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p1, Lcom/baidu/wallet/core/restframework/http/j;->u:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "*"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v0, v1

    goto :goto_7
.end method

.method public b(Lcom/baidu/wallet/core/restframework/http/j;)I
    .registers 7

    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/http/j;->t:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/wallet/core/restframework/http/j;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/http/j;->u:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/wallet/core/restframework/http/j;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/http/j;->v:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p1, Lcom/baidu/wallet/core/restframework/http/j;->v:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iget-object v1, p0, Lcom/baidu/wallet/core/restframework/http/j;->v:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/TreeSet;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iget-object v2, p1, Lcom/baidu/wallet/core/restframework/http/j;->v:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_66

    move v0, v2

    goto :goto_a

    :cond_66
    iget-object v2, p0, Lcom/baidu/wallet/core/restframework/http/j;->v:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/wallet/core/restframework/http/j;->v:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_7a

    const-string v1, ""

    :cond_7a
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4c

    goto :goto_a

    :cond_81
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public b()Z
    .registers 3

    const-string v0, "*"

    iget-object v1, p0, Lcom/baidu/wallet/core/restframework/http/j;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/http/j;->u:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/baidu/wallet/core/restframework/http/j;

    invoke-virtual {p0, p1}, Lcom/baidu/wallet/core/restframework/http/j;->b(Lcom/baidu/wallet/core/restframework/http/j;)I

    move-result v0

    return v0
.end method

.method public d()Z
    .registers 3

    const-string v0, "*"

    iget-object v1, p0, Lcom/baidu/wallet/core/restframework/http/j;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public e()Ljava/nio/charset/Charset;
    .registers 2

    const-string v0, "charset"

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/core/restframework/http/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-direct {p0, v0}, Lcom/baidu/wallet/core/restframework/http/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/baidu/wallet/core/restframework/http/j;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/baidu/wallet/core/restframework/http/j;

    iget-object v2, p0, Lcom/baidu/wallet/core/restframework/http/j;->t:Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/wallet/core/restframework/http/j;->t:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/baidu/wallet/core/restframework/http/j;->u:Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/wallet/core/restframework/http/j;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/baidu/wallet/core/restframework/http/j;->v:Ljava/util/Map;

    iget-object v3, p1, Lcom/baidu/wallet/core/restframework/http/j;->v:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2b
    move v0, v1

    goto :goto_4
.end method

.method public f()D
    .registers 4

    const-string v0, "q"

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/core/restframework/http/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/high16 v0, -0x4010000000000000L

    if-eqz v2, :cond_13

    :try_start_a
    invoke-direct {p0, v2}, Lcom/baidu/wallet/core/restframework/http/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_16

    move-result-wide v0

    :goto_12
    return-wide v0

    :cond_13
    const-wide/high16 v0, 0x3ff0000000000000L

    goto :goto_12

    :catch_16
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/http/j;->t:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/baidu/wallet/core/restframework/http/j;->u:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/baidu/wallet/core/restframework/http/j;->v:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/baidu/wallet/core/restframework/http/j;->a(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
