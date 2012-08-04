.class Lcom/facebook/orca/creation/StartThreadActivity$1;
.super Ljava/lang/Object;
.source "StartThreadActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# instance fields
.field private synthetic a:Lcom/facebook/orca/creation/StartThreadActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/creation/StartThreadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/facebook/orca/creation/StartThreadActivity$1;->a:Lcom/facebook/orca/creation/StartThreadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity$1;->a:Lcom/facebook/orca/creation/StartThreadActivity;

    invoke-static {v0}, Lcom/facebook/orca/creation/StartThreadActivity;->a(Lcom/facebook/orca/creation/StartThreadActivity;)V

    .line 140
    return-void
.end method
