.class public final enum Lcom/baidu/android/pushservice/richmedia/n$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/android/pushservice/richmedia/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/android/pushservice/richmedia/n$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/android/pushservice/richmedia/n$a;

.field private static final synthetic b:[Lcom/baidu/android/pushservice/richmedia/n$a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    new-instance v0, Lcom/baidu/android/pushservice/richmedia/n$a;

    const-string v1, "REQ_TYPE_GET_ZIP"

    invoke-direct {v0, v1, v2}, Lcom/baidu/android/pushservice/richmedia/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/android/pushservice/richmedia/n$a;->a:Lcom/baidu/android/pushservice/richmedia/n$a;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/baidu/android/pushservice/richmedia/n$a;

    sget-object v1, Lcom/baidu/android/pushservice/richmedia/n$a;->a:Lcom/baidu/android/pushservice/richmedia/n$a;

    aput-object v1, v0, v2

    sput-object v0, Lcom/baidu/android/pushservice/richmedia/n$a;->b:[Lcom/baidu/android/pushservice/richmedia/n$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/android/pushservice/richmedia/n$a;
    .registers 2

    const-class v0, Lcom/baidu/android/pushservice/richmedia/n$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/richmedia/n$a;

    return-object v0
.end method

.method public static values()[Lcom/baidu/android/pushservice/richmedia/n$a;
    .registers 1

    sget-object v0, Lcom/baidu/android/pushservice/richmedia/n$a;->b:[Lcom/baidu/android/pushservice/richmedia/n$a;

    invoke-virtual {v0}, [Lcom/baidu/android/pushservice/richmedia/n$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/android/pushservice/richmedia/n$a;

    return-object v0
.end method
