.class public abstract Lcom/facebook/katana/util/jsonmirror/types/JMBase;
.super Ljava/lang/Object;
.source "JMBase.java"


# static fields
.field public static final a:Lcom/facebook/katana/util/jsonmirror/types/JMBoolean;

.field public static final b:Lcom/facebook/katana/util/jsonmirror/types/JMLong;

.field private static c:Lcom/facebook/katana/util/jsonmirror/types/JMString;

.field private static d:Lcom/facebook/katana/util/jsonmirror/types/JMDouble;

.field private static e:Lcom/facebook/katana/util/jsonmirror/types/JMSimpleDict;

.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/facebook/katana/util/jsonmirror/types/JMBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/facebook/katana/util/jsonmirror/types/JMString;

    invoke-direct {v0}, Lcom/facebook/katana/util/jsonmirror/types/JMString;-><init>()V

    sput-object v0, Lcom/facebook/katana/util/jsonmirror/types/JMBase;->c:Lcom/facebook/katana/util/jsonmirror/types/JMString;

    .line 10
    new-instance v0, Lcom/facebook/katana/util/jsonmirror/types/JMBoolean;

    invoke-direct {v0}, Lcom/facebook/katana/util/jsonmirror/types/JMBoolean;-><init>()V

    sput-object v0, Lcom/facebook/katana/util/jsonmirror/types/JMBase;->a:Lcom/facebook/katana/util/jsonmirror/types/JMBoolean;

    .line 11
    new-instance v0, Lcom/facebook/katana/util/jsonmirror/types/JMLong;

    invoke-direct {v0}, Lcom/facebook/katana/util/jsonmirror/types/JMLong;-><init>()V

    sput-object v0, Lcom/facebook/katana/util/jsonmirror/types/JMBase;->b:Lcom/facebook/katana/util/jsonmirror/types/JMLong;

    .line 12
    new-instance v0, Lcom/facebook/katana/util/jsonmirror/types/JMDouble;

    invoke-direct {v0}, Lcom/facebook/katana/util/jsonmirror/types/JMDouble;-><init>()V

    sput-object v0, Lcom/facebook/katana/util/jsonmirror/types/JMBase;->d:Lcom/facebook/katana/util/jsonmirror/types/JMDouble;

    .line 13
    new-instance v0, Lcom/facebook/katana/util/jsonmirror/types/JMSimpleDict;

    invoke-direct {v0}, Lcom/facebook/katana/util/jsonmirror/types/JMSimpleDict;-><init>()V

    sput-object v0, Lcom/facebook/katana/util/jsonmirror/types/JMBase;->e:Lcom/facebook/katana/util/jsonmirror/types/JMSimpleDict;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/katana/util/jsonmirror/types/JMBase;->f:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lcom/facebook/katana/util/jsonmirror/types/JMBase;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/facebook/katana/util/jsonmirror/types/JMBase;"
        }
    .end annotation

    .prologue
    .line 27
    sget-object v0, Lcom/facebook/katana/util/jsonmirror/types/JMBase;->f:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/jsonmirror/types/JMBase;

    .line 28
    if-nez v0, :cond_1

    .line 29
    const-class v1, Ljava/lang/String;

    if-ne p0, v1, :cond_2

    .line 30
    sget-object v0, Lcom/facebook/katana/util/jsonmirror/types/JMBase;->c:Lcom/facebook/katana/util/jsonmirror/types/JMString;

    .line 55
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 56
    sget-object v1, Lcom/facebook/katana/util/jsonmirror/types/JMBase;->f:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_1
    return-object v0

    .line 31
    :cond_2
    const-class v1, Ljava/lang/Boolean;

    if-eq p0, v1, :cond_3

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_4

    .line 32
    :cond_3
    sget-object v0, Lcom/facebook/katana/util/jsonmirror/types/JMBase;->a:Lcom/facebook/katana/util/jsonmirror/types/JMBoolean;

    goto :goto_0

    .line 33
    :cond_4
    const-class v1, Ljava/lang/Long;

    if-eq p0, v1, :cond_5

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_5

    const-class v1, Ljava/lang/Integer;

    if-eq p0, v1, :cond_5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_6

    .line 35
    :cond_5
    sget-object v0, Lcom/facebook/katana/util/jsonmirror/types/JMBase;->b:Lcom/facebook/katana/util/jsonmirror/types/JMLong;

    goto :goto_0

    .line 36
    :cond_6
    const-class v1, Ljava/lang/Double;

    if-eq p0, v1, :cond_7

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_7

    const-class v1, Ljava/lang/Float;

    if-eq p0, v1, :cond_7

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_8

    .line 38
    :cond_7
    sget-object v0, Lcom/facebook/katana/util/jsonmirror/types/JMBase;->d:Lcom/facebook/katana/util/jsonmirror/types/JMDouble;

    goto :goto_0

    .line 39
    :cond_8
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 40
    sget-object v0, Lcom/facebook/katana/util/jsonmirror/types/JMBase;->e:Lcom/facebook/katana/util/jsonmirror/types/JMSimpleDict;

    goto :goto_0

    .line 41
    :cond_9
    const-class v1, Lcom/facebook/katana/util/jsonmirror/types/JMBase;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/jsonmirror/types/JMBase;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    new-instance v0, Lcom/facebook/katana/util/jsonmirror/JMFatalException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error instantiating element parser for class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/katana/util/jsonmirror/JMFatalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :catch_1
    move-exception v0

    new-instance v0, Lcom/facebook/katana/util/jsonmirror/JMFatalException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error instantiating element parser for class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/katana/util/jsonmirror/JMFatalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
