.class public Lcom/facebook/katana/util/logging/DataCounterNames;
.super Ljava/lang/Object;
.source "DataCounterNames.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/facebook/katana/util/logging/DataCounterNames;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/util/logging/DataCounterNames;->a:Ljava/lang/String;

    .line 18
    const-string v0, "fbcdn"

    sput-object v0, Lcom/facebook/katana/util/logging/DataCounterNames;->b:Ljava/lang/String;

    .line 20
    const-string v0, "_received"

    sput-object v0, Lcom/facebook/katana/util/logging/DataCounterNames;->d:Ljava/lang/String;

    .line 21
    const-string v0, "_sent"

    sput-object v0, Lcom/facebook/katana/util/logging/DataCounterNames;->e:Ljava/lang/String;

    .line 23
    const-string v0, "api"

    sput-object v0, Lcom/facebook/katana/util/logging/DataCounterNames;->f:Ljava/lang/String;

    .line 24
    const-string v0, "api_video"

    sput-object v0, Lcom/facebook/katana/util/logging/DataCounterNames;->g:Ljava/lang/String;

    .line 25
    const-string v0, "graph"

    sput-object v0, Lcom/facebook/katana/util/logging/DataCounterNames;->h:Ljava/lang/String;

    .line 26
    const-string v0, "crash_report"

    sput-object v0, Lcom/facebook/katana/util/logging/DataCounterNames;->i:Ljava/lang/String;

    .line 27
    const-string v0, "log"

    sput-object v0, Lcom/facebook/katana/util/logging/DataCounterNames;->j:Ljava/lang/String;

    .line 28
    const-string v0, "cdn"

    sput-object v0, Lcom/facebook/katana/util/logging/DataCounterNames;->k:Ljava/lang/String;

    .line 29
    const-string v0, "uncategorized"

    sput-object v0, Lcom/facebook/katana/util/logging/DataCounterNames;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/net/URI;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/facebook/katana/util/logging/DataCounterNames;->b(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/util/logging/DataCounterNames;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 72
    const-string v0, ""

    .line 73
    if-eqz p1, :cond_0

    .line 74
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 75
    if-lez v1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/facebook/katana/util/logging/DataCounterNames;->b(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/util/logging/DataCounterNames;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 37
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/facebook/katana/util/logging/DataCounterNames;->c:Ljava/util/HashMap;

    .line 38
    invoke-static {p0}, Lcom/facebook/katana/Constants$URL;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/util/logging/DataCounterNames;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/katana/util/logging/DataCounterNames;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {p0}, Lcom/facebook/katana/Constants$URL;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/util/logging/DataCounterNames;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/katana/util/logging/DataCounterNames;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {p0}, Lcom/facebook/katana/Constants$URL;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/util/logging/DataCounterNames;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/katana/util/logging/DataCounterNames;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {p0}, Lcom/facebook/katana/Constants$URL;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/util/logging/DataCounterNames;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/katana/util/logging/DataCounterNames;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {p0}, Lcom/facebook/katana/Constants$URL;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/util/logging/DataCounterNames;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/katana/util/logging/DataCounterNames;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {p0}, Lcom/facebook/katana/Constants$URL;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/util/logging/DataCounterNames;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/katana/util/logging/DataCounterNames;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {p0}, Lcom/facebook/katana/Constants$URL;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/util/logging/DataCounterNames;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/katana/util/logging/DataCounterNames;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {p0}, Lcom/facebook/katana/Constants$URL;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/util/logging/DataCounterNames;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/katana/util/logging/DataCounterNames;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 50
    sget-object v0, Lcom/facebook/katana/util/logging/DataCounterNames;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method private static b(Ljava/net/URI;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    sget-object v0, Lcom/facebook/katana/util/logging/DataCounterNames;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 89
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    :goto_0
    return-object v0

    .line 93
    :cond_1
    invoke-virtual {p0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 95
    sget-object v1, Lcom/facebook/katana/util/logging/DataCounterNames;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    sget-object v0, Lcom/facebook/katana/util/logging/DataCounterNames;->k:Ljava/lang/String;

    goto :goto_0

    .line 98
    :cond_2
    sget-object v0, Lcom/facebook/katana/util/logging/DataCounterNames;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Uncategorized Uri: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-object v0, Lcom/facebook/katana/util/logging/DataCounterNames;->l:Ljava/lang/String;

    goto :goto_0
.end method
