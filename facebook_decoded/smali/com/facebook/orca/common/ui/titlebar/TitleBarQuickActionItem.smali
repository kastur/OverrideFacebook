.class public Lcom/facebook/orca/common/ui/titlebar/TitleBarQuickActionItem;
.super Ljava/lang/Object;
.source "TitleBarQuickActionItem.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarQuickActionItem;->a:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarQuickActionItem;->b:Ljava/lang/String;

    .line 16
    iput p2, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarQuickActionItem;->c:I

    .line 17
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarQuickActionItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarQuickActionItem;->c:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarQuickActionItem;->b:Ljava/lang/String;

    return-object v0
.end method
