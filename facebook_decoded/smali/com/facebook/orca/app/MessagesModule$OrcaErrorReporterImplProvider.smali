.class Lcom/facebook/orca/app/MessagesModule$OrcaErrorReporterImplProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/debug/OrcaErrorReporterImpl;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2341
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2341
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$OrcaErrorReporterImplProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private static b()Lcom/facebook/orca/debug/OrcaErrorReporterImpl;
    .locals 1

    .prologue
    .line 2345
    new-instance v0, Lcom/facebook/orca/debug/OrcaErrorReporterImpl;

    invoke-direct {v0}, Lcom/facebook/orca/debug/OrcaErrorReporterImpl;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2341
    invoke-static {}, Lcom/facebook/orca/app/MessagesModule$OrcaErrorReporterImplProvider;->b()Lcom/facebook/orca/debug/OrcaErrorReporterImpl;

    move-result-object v0

    return-object v0
.end method
