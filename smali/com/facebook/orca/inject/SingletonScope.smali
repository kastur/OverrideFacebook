.class public Lcom/facebook/orca/inject/SingletonScope;
.super Ljava/lang/Object;
.source "SingletonScope.java"

# interfaces
.implements Lcom/facebook/orca/inject/Scope;


# static fields
.field private static a:Lcom/facebook/orca/inject/SingletonScope;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/facebook/orca/inject/SingletonScope;

    invoke-direct {v0}, Lcom/facebook/orca/inject/SingletonScope;-><init>()V

    sput-object v0, Lcom/facebook/orca/inject/SingletonScope;->a:Lcom/facebook/orca/inject/SingletonScope;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static get()Lcom/facebook/orca/inject/SingletonScope;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/facebook/orca/inject/SingletonScope;->a:Lcom/facebook/orca/inject/SingletonScope;

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
    .line 31
    new-instance v0, Lcom/facebook/orca/inject/SingletonProvider;

    invoke-direct {v0, p1}, Lcom/facebook/orca/inject/SingletonProvider;-><init>(Ljavax/inject/Provider;)V

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
    .line 26
    const-class v0, Ljavax/inject/Singleton;

    return-object v0
.end method
