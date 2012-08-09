.class public Lcom/facebook/katana/util/jsonmirror/types/JMStaticKeysDict;
.super Lcom/facebook/katana/util/jsonmirror/types/JMDict;
.source "JMStaticKeysDict.java"


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private d:Z

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/util/Tuple",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/util/jsonmirror/types/JMBase;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lcom/facebook/katana/util/jsonmirror/JMDictDestination;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/facebook/katana/util/jsonmirror/types/JMStaticKeysDict;

    invoke-static {v0}, Lcom/facebook/katana/util/Utils;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/util/jsonmirror/types/JMStaticKeysDict;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/Map;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/katana/util/jsonmirror/JMDictDestination;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/util/Tuple",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/util/jsonmirror/types/JMBase;",
            ">;>;Z)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/types/JMDict;-><init>()V

    .line 42
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/util/jsonmirror/types/JMStaticKeysDict;->f:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    iget-object v0, p0, Lcom/facebook/katana/util/jsonmirror/types/JMStaticKeysDict;->f:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 48
    iput-object p2, p0, Lcom/facebook/katana/util/jsonmirror/types/JMStaticKeysDict;->e:Ljava/util/Map;

    .line 49
    iput-boolean p3, p0, Lcom/facebook/katana/util/jsonmirror/types/JMStaticKeysDict;->d:Z

    .line 50
    return-void

    .line 44
    :catch_0
    move-exception v0

    new-instance v0, Lcom/facebook/katana/util/jsonmirror/JMFatalException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "You need to add a no-argument constructor to class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/facebook/katana/util/Utils;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to use it with jsonmirror."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/katana/util/jsonmirror/JMFatalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/facebook/katana/util/Tuple;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/katana/util/Tuple",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/util/jsonmirror/types/JMBase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/katana/util/jsonmirror/types/JMStaticKeysDict;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/Tuple;

    return-object v0
.end method

.method public final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/util/Tuple",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/util/jsonmirror/types/JMBase;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/katana/util/jsonmirror/types/JMStaticKeysDict;->e:Ljava/util/Map;

    return-object v0
.end method

.method public final b()Lcom/facebook/katana/util/jsonmirror/JMDictDestination;
    .locals 3

    .prologue
    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/util/jsonmirror/types/JMStaticKeysDict;->f:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/jsonmirror/JMDictDestination;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 78
    :goto_0
    return-object v0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    sget-object v1, Lcom/facebook/katana/util/jsonmirror/types/JMStaticKeysDict;->c:Ljava/lang/String;

    const-string v2, "Illegal argument exception"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 71
    :catch_1
    move-exception v0

    .line 72
    sget-object v1, Lcom/facebook/katana/util/jsonmirror/types/JMStaticKeysDict;->c:Ljava/lang/String;

    const-string v2, "Instantiation exception"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 73
    :catch_2
    move-exception v0

    .line 74
    sget-object v1, Lcom/facebook/katana/util/jsonmirror/types/JMStaticKeysDict;->c:Ljava/lang/String;

    const-string v2, "Illegal access exception"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 75
    :catch_3
    move-exception v0

    .line 76
    sget-object v1, Lcom/facebook/katana/util/jsonmirror/types/JMStaticKeysDict;->c:Ljava/lang/String;

    const-string v2, "Invocation target exception"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/facebook/katana/util/jsonmirror/types/JMStaticKeysDict;->d:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 90
    const-string v0, "%s<%s, %s>"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/facebook/katana/util/jsonmirror/types/JMStaticKeysDict;

    invoke-static {v3}, Lcom/facebook/katana/util/Utils;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/katana/util/jsonmirror/types/JMStaticKeysDict;->f:Ljava/lang/reflect/Constructor;

    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/katana/util/Utils;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/facebook/katana/util/jsonmirror/types/JMStaticKeysDict;->e:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
