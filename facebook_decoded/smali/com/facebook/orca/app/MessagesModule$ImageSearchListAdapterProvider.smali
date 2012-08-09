.class Lcom/facebook/orca/app/MessagesModule$ImageSearchListAdapterProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/images/ImageSearchListAdapter;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1334
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1334
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$ImageSearchListAdapterProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/images/ImageSearchListAdapter;
    .locals 3

    .prologue
    .line 1338
    new-instance v2, Lcom/facebook/orca/images/ImageSearchListAdapter;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$ImageSearchListAdapterProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v1, Landroid/view/LayoutInflater;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$ImageSearchListAdapterProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    invoke-direct {v2, v0, v1}, Lcom/facebook/orca/images/ImageSearchListAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;)V

    return-object v2
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1334
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$ImageSearchListAdapterProvider;->b()Lcom/facebook/orca/images/ImageSearchListAdapter;

    move-result-object v0

    return-object v0
.end method
