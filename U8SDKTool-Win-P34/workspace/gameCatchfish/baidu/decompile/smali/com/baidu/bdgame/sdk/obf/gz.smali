.class public Lcom/baidu/bdgame/sdk/obf/gz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/gz;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 120
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/gz$1;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/gz$1;-><init>()V

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/gz;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/gz;->a:I

    .line 27
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/gz;->b:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/gz;->c:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/baidu/bdgame/sdk/obf/gz;->d:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/baidu/bdgame/sdk/obf/gz;->e:Ljava/lang/String;

    .line 31
    iput-object p6, p0, Lcom/baidu/bdgame/sdk/obf/gz;->f:Ljava/lang/String;

    .line 32
    iput-object p7, p0, Lcom/baidu/bdgame/sdk/obf/gz;->g:Ljava/lang/String;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/gz;I)I
    .registers 2

    .prologue
    .line 11
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/gz;->a:I

    return p1
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/gz;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 11
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gz;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/gz;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 11
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gz;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/gz;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 11
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gz;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/gz;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 11
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gz;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/gz;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 11
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gz;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/baidu/bdgame/sdk/obf/gz;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 11
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gz;->g:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 36
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->a:I

    return v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 40
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/gz;->a:I

    .line 41
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 48
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gz;->b:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 56
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gz;->c:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gz;->d:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 72
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gz;->e:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gz;->f:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 88
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gz;->g:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->g:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaiduBeanOrder {orderType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/gz;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", orderSerial:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gz;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", amount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gz;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startDateTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gz;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gz;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", orderMoney:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gz;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", itemName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gz;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 111
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    return-void
.end method
