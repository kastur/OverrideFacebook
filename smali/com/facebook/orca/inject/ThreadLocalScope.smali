.class public Lcom/facebook/orca/inject/ThreadLocalScope;
.super Ljava/lang/Object;
.source "ThreadLocalScope.java"

# interfaces
.implements Lcom/facebook/orca/inject/Scope;


# static fields
.field private static a:Lcom/facebook/orca/inject/ThreadLocalScope;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/facebook/orca/inject/ThreadLocalScope;

    invoke-direct {v0}, Lcom/facebook/orca/inject/ThreadLocalScope;-><init>()V

    sput-object v0, Lcom/facebook/orca/inject/ThreadLocalScope;->a:Lcom/facebook/orca/inject/ThreadLocalScope;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static get()Lcom/facebook/orca/inject/ThreadLocalScope;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/facebook/orca/inject/ThreadLocalScope;->a:Lcom/facebook/orca/inject/ThreadLocalScope;

    return-object v0
.end method


# virtual methods
.method public final a(Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/inject/Provider",
            "<TT;>;)",
            "Ljavax/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Lcom/facebook/orca/inject/ThreadLocalProvider;

    invoke-direct {v0, p1}, Lcom/facebook/orca/inject/ThreadLocalProvider;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public annotationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    const-class v0, Lcom/facebook/orca/inject/ThreadLocalScoped;

    return-object v0
.end method
