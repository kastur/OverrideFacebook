.class Lcom/facebook/orca/users/UserSerialization$1;
.super Ljava/lang/ThreadLocal;
.source "UserSerialization.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/text/SimpleDateFormat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/facebook/orca/users/UserSerialization;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method private static a()Ljava/text/SimpleDateFormat;
    .locals 3

    .prologue
    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "M/d/y"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method


# virtual methods
.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/facebook/orca/users/UserSerialization$1;->a()Ljava/text/SimpleDateFormat;

    move-result-object v0

    return-object v0
.end method
